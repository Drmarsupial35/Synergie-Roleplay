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
    # Ajout du role @👨Citoyen lorsque l'utilisateur réagit au messagge d'accueil
    if payload.message_id == 664239891273744395:
        if payload.emoji.name == "✅":
            guild       = client.get_guild(661382511976513556) # Le serveur FiveM
            citoyen     = guild.get_role(661386494254120971)   # Le role @👨Citoyen
            sansPapiers = guild.get_role(664210809940869157)   # Le role @📦Sans Papier
            member      = guild.get_member(payload.user_id)    # L'utilisateur
            await member.add_roles(citoyen)
            await member.remove_roles(sansPapiers)

    # Création d'un ticket lorsque l'utilisateur réagit au message
    if payload.message_id == 702548411055997071:
        if payload.emoji.name == "☎":
            guild  = client.get_guild(661382511976513556) # Le serveur FiveM
            member = guild.get_member(payload.user_id)    # L'utilisateur
            id = uuid.uuid4()
            await guild.create_text_channel('ticket-'.id)




@client.event
async def on_raw_reaction_remove(payload):
    # Suppression du role @👨Citoyen si l'utilisateur parviens à retirer sa réaction au message d'accueil
    if payload.message_id == 664239891273744395:
        if payload.emoji.name == "✅":
            guild       = client.get_guild(661382511976513556) # Le serveur FiveM
            citoyen     = guild.get_role(661386494254120971)   # Le role @👨Citoyen
            sansPapiers = guild.get_role(664210809940869157)   # Le role @📦Sans Papier
            member      = guild.get_member(payload.user_id)
            await member.add_roles(sansPapiers)
            await member.remove_roles(citoyen)



#Lorsqu'un message est envoyé
@client.event
async def on_message(message):
    channel = message.channel # Le channel dans lequel le message a été envoyé
    author = message.author # L'auteur du message
    content = message.content # Le contenu du message envoyé

    # Vérifie que le message envoyé n'a pas été envoyé par le Bot lui-même
    if not (author == client.user):

        if content.startswith('Bonjour'):
            await channel.send('Hello World! ')

        # Affiche l'image bon toutou
        if message.content.startswith('%test'):
            await channel.send(file=discord.File("./ressources/img/BonToutou.jpg"))

        #Affiche la liste des commandes disponibles avec le bot
        if message.content.startswith("%help"):
            await channel.send("Il n'y a pas vraiment de commandes pour le moment. Dommage ! 😥")

# Token du Bot utilisé pour se connecté
client.run('NTgxMjI1NzIwNzg1NjY2MDQ4.XUn3rw.hGkiJAirCDV52g9h4Kdo9IF4bSw')
