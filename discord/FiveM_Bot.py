import discord
from datetime import datetime
import uuid

client = discord.Client()

# Message lors du lancement du Bot et sa connexion au serveur
@client.event
async def on_ready():
    print('*** CONNEXION EN TANT QUE : {0.user}'.format(client),' ***')
    await client.change_presence(activity=discord.Game(name='IP : 185.44.81.48'))


#Lorsqu'une personne se connecte sur le serveur
@client.event
async def on_member_join(member):
    guild = client.get_guild(661382511976513556) # Le serveur FiveM
    sansPapiers = guild.get_role(664210809940869157) # Le role @📦Sans Papier
    aeroport = client.get_channel(665701196505415702) # Le channel #aéroport
    await member.add_roles(sansPapiers)
    await aeroport.send(":tada:Bienvenue " + member.mention + " !\n:warning:N'oublie pas de mettre un Prénom & Nom RP !")


# Lorsqu'une réaction est ajoutée à un message
@client.event
async def on_raw_reaction_add(payload):
    channel = client.get_channel(payload.channel_id)
    # Ajout du role @👨Citoyen lorsque l'utilisateur réagit au message d'accueil
    if payload.message_id == 664239891273744395:
        # On cherche le message dans le salon
        for msg in await channel.pins():
            if msg.id == 664239891273744395:
                break
        if payload.emoji.name == "✅":

            guild       = client.get_guild(661382511976513556) # Le serveur FiveM
            citoyen     = guild.get_role(661386494254120971)   # Le role @👨Citoyen
            sansPapiers = guild.get_role(664210809940869157)   # Le role @📦Sans Papier
            member      = guild.get_member(payload.user_id)    # L'utilisateur
            await member.add_roles(citoyen)
            await member.remove_roles(sansPapiers)

        else:
            if not (payload.user_id == client.user.id):
                await msg.remove_reaction(payload.emoji.name, member)


    # Création d'un ticket lorsque l'utilisateur réagit au message
    elif payload.message_id == 702548411055997071:
        # On cherche le message dans le salon
        for msg in await channel.pins():
            if msg.id == 702548411055997071:
                break
        if payload.emoji.name == "📡":
            guild  = client.get_guild(661382511976513556) # Le serveur FiveM
            member = guild.get_member(payload.user_id)    # L'utilisateur
            staff  = guild.get_role(661540428704645121)   # Le role @⚙️Staff
            id = f"{uuid.uuid4()}"[0:8]
            staff_channel = client.get_channel(702636485245010052)

            # Liste des permissions (Staff + L'utilisateurs peuvent lire le channel)
            permissions = {
                guild.default_role: discord.PermissionOverwrite(read_messages=False),
                staff: discord.PermissionOverwrite(read_messages= True),
                member: discord.PermissionOverwrite(read_messages= True)
            }

            # On cherche la catégorie parmis toutes les catégories
            for cat in guild.categories:
                if cat.id == 661638748307718145:
                    break


            # Suppression de la réaction de l'utilisateur
            await msg.remove_reaction(payload.emoji.name, member)

            # Création du salon
            ticket_channel = await guild.create_text_channel(f"ticket-{id}", overwrites=permissions, category=cat)
            #Envoie d'un message dans le channel Staff et dans celui du ticket
            await staff_channel.send(f"L'utilisateur **{member.nick}** (*{member}*) à créé un ticket ({ticket_channel.mention}) !")
            embed = discord.Embed(title="Que devez-vous faire ?", description="Ecrivez ici votre demande et un membre du staff viendra vers vous rapidement !\n Une fois votre ticket résolu, réagissez à ce message avec l'emoji 🔒", color=0x006f00)
            ticket_msg = await ticket_channel.send(content=f"{member.mention} vous avez bien créer votre ticket !", embed=embed)
            await ticket_msg.add_reaction("🔒") # Ajout d'une réaction du bot

        else:
            # Suppression de la réaction de l'utilisateur s'il n'a pas mis la bonne
            if not (payload.user_id == client.user.id):
                await msg.remove_reaction(payload.emoji.name, member)

    #Suppression du salon lorsque l'utilisateur réagit au message
    elif "ticket-" in channel.name:
        if payload.emoji.name == "🔒":
            if not (payload.user_id == client.user.id):
                await channel.delete()

@client.event
async def on_raw_reaction_remove(payload):
    # Suppression du role @👨Citoyen si l'utilisateur parviens à retirer sa réaction au message d'accueil
    if payload.message_id == 664239891273744395:
        if payload.emoji.name == "✅":
            guild       = client.get_guild(661382511976513556) # Le serveur FiveM
            citoyen     = guild.get_role(661386494254120971)   # Le role @👨Citoyen
            sansPapiers = guild.get_role(664210809940869157)   # Le role @📦Sans Papier
            member      = guild.get_member(payload.user_id)    # Le role @⚙️Staff
            await member.add_roles(sansPapiers)
            await member.remove_roles(citoyen)


#Lorsqu'un message est envoyé
@client.event
async def on_message(message):
    guild      = client.get_guild(661382511976513556) # Le serveur FiveM
    channel    = message.channel                      # Le channel dans lequel le message a été envoyé
    author     = message.author                       # L'auteur du message
    content    = message.content                      # Le contenu du message envoyé
    staff_role = guild.get_role(661540428704645121)

    # Vérifie que le message envoyé n'a pas été envoyé par le Bot lui-même
    if not (author == client.user):

        if content.startswith('.embed'):
            embed = discord.Embed(title="Title", description="Desc", color=0x006f00)
            embed.add_field(name="Field1", value="hi", inline=False)
            embed.add_field(name="Field2", value="hi2", inline=False)
            await channel.send(content='Hello World!', embed=embed)

        # Affiche l'image bon toutou
        elif message.content.startswith('.test'):
            await channel.send(file=discord.File("./ressources/img/BonToutou.jpg"))

        #Affiche la liste des commandes disponibles avec le bot
        elif message.content.startswith(".help"):
            await channel.send("Il n'y a pas vraiment de commandes pour le moment. Dommage ! 😥")

        elif message.content.startswith(".add_react"):
            if staff_role in author.roles:
                await channel.purge(limit=1)
                args = content.split()
                if len(args) < 2:
                    await channel.send(f"{author.mention} Cette commande demande 1 argument (l'emoji à ajouter)")
                else:
                    emoji  = args[1]

                    messages = await channel.history(limit=123).flatten()
                    msg = messages[len(messages)-1]
                    await msg.add_reaction(emoji)

# Token du Bot utilisé pour se connecté
client.run('NTgxMjI1NzIwNzg1NjY2MDQ4.XUn3rw.hGkiJAirCDV52g9h4Kdo9IF4bSw')
