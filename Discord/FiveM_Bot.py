import discord
import random
import string
import datetime
from datetime import datetime

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
    await aeroport.send(':tada:Bienvenue ' + member.mention + ' !\n:warning:N\'oublie pas de mettre un Prénom & Nom RP !')


# Lorsqu'une réaction est ajoutée à un message
@client.event
async def on_raw_reaction_add(payload):
    channel = client.get_channel(payload.channel_id)
    guild  = client.get_guild(661382511976513556) # Le serveur FiveM
    member = guild.get_member(payload.user_id)    # L'utilisateur
    # Ajout du role @👨Citoyen lorsque l'utilisateur réagit au message d'accueil
    if payload.message_id == 702866536175763469:
        if not (payload.user_id == client.user.id):
            # On cherche le message dans le salon
            for msg in await channel.pins():
                if msg.id == 702866536175763469:
                    break
            if payload.emoji.name == '✅':
                citoyen     = guild.get_role(661386494254120971)   # Le role @👨Citoyen
                sansPapiers = guild.get_role(664210809940869157)   # Le role @📦Sans Papier
                await member.add_roles(citoyen)
                await member.remove_roles(sansPapiers)

            else:
                if not (payload.user_id == client.user.id):
                    await msg.remove_reaction(payload.emoji.name, member)


    # Création d'un ticket lorsque l'utilisateur réagit au message
    elif payload.message_id == 702861806074593421:
        if not (payload.user_id == client.user.id):
            # On cherche le message dans le salon
            for msg in await channel.pins():
                if msg.id == 702861806074593421:
                    break
            if payload.emoji.name == '🔍':
                staff  = guild.get_role(661540428704645121)   # Le role @⚙️Staff

                id = ''.join([random.choice(string.ascii_letters
                + string.digits) for n in range(8)])
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
                ticket_channel = await guild.create_text_channel('ticket-' + id, overwrites=permissions, category=cat)

                try:
                    #Envoie d'un message dans le channel Staff et dans celui du ticket
                    await staff_channel.send('L\'utilisateur **' + member.nick + '** (*' +member.name + '*) à créé un ticket (' + ticket_channel.mention + ') !')
                except TypeError:
                    await staff_channel.send('L\'utilisateur **' + member.name + ' à créé un ticket (' + ticket_channel.mention + ') !')
                embed = discord.Embed(title='Que devez-vous faire ?', description='Ecrivez ici votre demande et un membre du staff viendra vers vous rapidement !\n Une fois votre ticket résolu, réagissez à ce message avec l\'emoji 🔒', color=0x006f00)
                ticket_msg = await ticket_channel.send(content= member.mention + ' vous avez bien créer votre ticket !', embed=embed)
                await ticket_msg.add_reaction('🔒') # Ajout d'une réaction du bot

            else:
                # Suppression de la réaction de l'utilisateur s'il n'a pas mis la bonne
                await msg.remove_reaction(payload.emoji.name, member)

    #Suppression du salon lorsque l'utilisateur réagit au message
    elif 'ticket-' in channel.name:
        if payload.emoji.name == '🔒':
            if not (payload.user_id == client.user.id):
                await channel.delete()

@client.event
async def on_raw_reaction_remove(payload):
    # Suppression du role @👨Citoyen si l'utilisateur parviens à retirer sa réaction au message d'accueil
    if payload.message_id == 702866536175763469:
        if payload.emoji.name == '✅':
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
    clean_content = message.clean_content             # Le contenu du message (sans les @ et #)
    staff_role = guild.get_role(661540428704645121)
    logs_channel = client.get_channel(702538641343250452)

    # Vérifie que le message envoyé n'a pas été envoyé par le Bot lui-même
    if not (author.bot):
        #Système de logs
        date = datetime.today()
        day = str(date.day)
        month = str(date.month)
        hour = str(date.hour)
        minute = str(date.minute)

        if len(day) == 1:
            day = "0" + day
        if len(month) == 1:
            month = "0" + month
        if len(hour) == 1:
            hour = "0" + hour
        if len(minute) == 1:
            minute = "0" + minute

        date = day + "/" + month + " " + hour + "h" + minute
        try:
            c = "**" + author.nick + "** (*" + author.name + "*) - **" + channel.name + "** (*" + date + "*)\n" + clean_content
        except TypeError:
            c = "**" + author.name + " - " + channel.name + "** (*" + date + "*)\n" + clean_content
        await logs_channel.send(content = c)

        if content.startswith('.create_embed'):
            if staff_role in author.roles:
                args = content.split("\"")
                for m in args:
                    if m == '' or m == ' ':
                        args.remove(m)
                    else:
                        m.strip()
                if len(args) < 4:
                    await channel.send(author.mention + ' Cette commande demande 3 arguments (Le titre et la description du message, ainsi que la couleur de celui-ci)')
                else:
                    title = args[1]
                    desc  = args[2]
                    color = int(args[3])
                    embed = discord.Embed(title=title, description=desc, color=color)
                    await channel.send(content='', embed=embed)
            else:
                await channel.send(author.mention + ' Vous n\'avez pas la permission d\'utiliser cette commande !')
            await message.delete()

        elif message.content.startswith('.add_react'):
            if staff_role in author.roles:
                args = content.split()
                if len(args) < 3:
                    await channel.send(author.mention + ' Cette commande demande 2 argument (L\'ID du message et l\'emoji à ajouter)')
                else:
                    msg_id = int(args[1])
                    emoji  = args[2]

                    messages = await channel.history(limit=123).flatten()
                    trouve = False
                    for m in messages:
                        if msg_id == m.id:
                            trouve = True
                            break
                    if trouve:
                        await m.add_reaction(emoji)
                    else:
                        await channel.send(author.mention + " Aucun message n'a été trouvé avec cet ID !")
            else:
                await channel.send(author.mention + ' Vous n\'avez pas la permission d\'utiliser cette commande !')
            await message.delete()

        elif message.content.startswith('.help'):
            if staff_role in author.roles:
                embed = discord.Embed(title='Liste des commandes disponibles :', description='', color=0x006f00)
                embed.add_field(name=".create_embed <Titre> <Description> <Couleur>", value="Permet de créer un message comme celui-ci", inline=False)
                embed.add_field(name=".add_react <ID> <Emoji>", value="Permet d'ajouter une réaction à un message", inline=False)
                embed.add_field(name=".open_reu", value="Permet d'ouvrir le salon des réunions", inline=False)
                embed.add_field(name=".close_reu", value="Permet de fermer le salon des réunions", inline=False)
                embed.add_field(name=".help", value="Permet d'afficher la liste des commandes", inline=False)
                await channel.send(content = author.mention, embed= embed)
            else:
                await channel.send(author.mention + ' Vous n\'avez pas la permission d\'utiliser cette commande !')
            await message.delete()

        elif message.content.startswith('.open_reu'):
            if staff_role in author.roles:
                reu_channel = client.get_channel(661644667749793794)
                citoyen = guild.get_role(661386494254120971)
                await reu_channel.set_permissions(citoyen, read_messages=True)
            else:
                await channel.send(author.mention + ' Vous n\'avez pas la permission d\'utiliser cette commande !')
            await message.delete()

        elif message.content.startswith('.close_reu'):
            if staff_role in author.roles:
                reu_channel = client.get_channel(661644667749793794)
                citoyen = guild.get_role(661386494254120971)
                await reu_channel.set_permissions(citoyen, read_messages=False)
            else:
                await channel.send(author.mention + ' Vous n\'avez pas la permission d\'utiliser cette commande !')
            await message.delete()

@client.event
async def on_member_update(before, after):
    guild = client.get_guild(661382511976513556)
    # Liste des roles du serveur
    fonda     = guild.get_role(661384140532350987)
    admin     = guild.get_role(661384188234039327)
    modo      = guild.get_role(661384249588318249)
    helpeur   = guild.get_role(661384540769615872)
    dev       = guild.get_role(661385940857520158)
    graphiste = guild.get_role(663390299233714176)
    staff     = guild.get_role(661540428704645121)
    staff_roles  = [fonda, admin, modo, helpeur, dev, graphiste, staff]

    lspd    = guild.get_role(661385616067657791)
    lsms    = guild.get_role(661385656445960203)
    taxi    = guild.get_role(661386164061863982)
    meca    = guild.get_role(661386331271987220)
    bank    = guild.get_role(661387083071356959)
    immo    = guild.get_role(661633648956669952)
    avocat  = guild.get_role(661387112490205214)
    juge    = guild.get_role(661387144207532078)
    barman  = guild.get_role(661387164403236884)
    journa  = guild.get_role(661387726821523517)
    brinks  = guild.get_role(661387778667315221)
    citoyen = guild.get_role(661386494254120971)
    normal_roles = [lspd, lsms, taxi, meca, bank, immo, avocat, juge, barman, journa, brinks, citoyen]

    families = guild.get_role(661386399332696084)
    ballas   = guild.get_role(661386507310858250)
    vagos    = guild.get_role(661631856944480262)
    mafia    = guild.get_role(661386728862515210)
    gang_roles   = [families, ballas, vagos, mafia]

    booster   = guild.get_role(661623425500053521)
    donateur  = guild.get_role(662083950260387840)
    streamer  = guild.get_role(668224754481889282)
    paperless = guild.get_role(664210809940869157)
    other_roles  = [booster, donateur, streamer, paperless]

    bar1 = guild.get_role(661385479211581510)
    bar2 = guild.get_role(661386638726922259)
    bar3 = guild.get_role(661643219695697933)

    if common_data(staff_roles, after.roles) and common_data(normal_roles, after.roles):
        await after.add_roles(bar1)
    else:
        await after.remove_roles(bar1)
    if common_data(normal_roles, after.roles) and common_data(gang_roles, after.roles):
        await after.add_roles(bar2)
    else:
        await after.remove_roles(bar2)
    if common_data(normal_roles, after.roles) and common_data(other_roles, after.roles):
        await after.add_roles(bar3)
    else:
        await after.remove_roles(bar3)

def common_data(list1, list2):
    result = False
    for x in list1:
        for y in list2:
            if x == y:
                result = True
                return result

    return result

# Token du Bot utilisé pour se connecté
client.run('NTgxMjI1NzIwNzg1NjY2MDQ4.XUn3rw.hGkiJAirCDV52g9h4Kdo9IF4bSw')
