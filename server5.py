from bottle import get, route, template, run, request#Importing bottle framework
from plugin import websocket#Importing websocket functionality
from server import GeventWebSocketServer#Importing server
from pymongo import MongoClient#Importing pymongo
from random import randint
import signal
import sys

users=[]#Making an empty list

@route('/')#Defining a default route
def logreg():
    return template('signlog1')#returning a template when the route is entered

@route('/signup')#Defining a named route
def sign():
    return template('signlog1')

@route('/login')
def log():
    return template('signlog1')

@route('/map')
def usr():
    return template('map')
	
@route('/adm')
def adm1():
    return template('adm1')

usr=[]
dict={}#Defining an empty dictionary
dict1={}
dict2={}


def signal_handler(signal, frame):#Defining a signal handler for handing Ctrl+C
    print('You pressed Ctrl+C!')
    client=MongoClient()
    db=client.datbas
    db.usrinftst3.delete_many({})#Removing all documents from the collection
    sys.exit(0)#Exiting system
signal.signal(signal.SIGINT, signal_handler)
print('Press Ctrl+C')#Printing on console

@route('/websocket',apply=[websocket])
def chat(wss):
    client=MongoClient()
    db=client.datbas
    strin=db.usrinftst1.find()#finding all documents
    strin1="0123456789xabcdefgx9876543210"
    for val in strin:
        strin1=val['Usr']
        break
    if(strin1=="0123456789xabcdefgx9876543210"):#checking if the user directly accesses chat page without login
        return
    db.usrinftst1.drop()
    db.usrinftst3.insert({"Usr":strin1})#Number of online users
    db.Logtst.insert({
    "new_usr":"New User Enters"
    })
    if (db.info.count()==0):
        db.info.insert({'pos1':'32.1976097','pos2':'76.3237065','data':"<b>5. Super 10 - 18/3/16</b><br/><br/><img src='NZ.png' width='30px' height='30px' alt='NZ'> NZ- 142/8 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='AUS.png' width='30px' height='30px' alt='AUS'> AUS- 134/9 (20), L"})
        db.info.insert({'pos1':'12.9788139','pos2':'77.5974045','data':"<b>13. Super 10 - 23/3/16</b><br/><br/><img src='IND.png' width='30px' height='30px' alt='IND'> IND- 146/7 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='BAN.png' width='30px' height='30px' alt='BAN'> BAN- 145/9 (20), L<br/><br/><b>10. Super 10 - 21/3/16</b><br/><br/><img src='BAN.png' width='30px' height='30px' alt='BAN'> BAN- 156/5 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='AUS.png' width='30px' height='30px' alt='AUS'> AUS- 157/7 (18.3), W<br/><br/><b>9. Super 10 - 20/3/16</b><br/><br/><img src='SL.png' width='30px' height='30px' alt='SL'> SL- 122/9 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 127/3 (18.2), W"})
        db.info.insert({'pos1':'21.0856225','pos2':'78.9879812','data':"<b>18. Super 10 - 27/3/16</b><br/><br/><img src='AFG.png' width='30px' height='30px' alt='AFG'> AFG- 123/7 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 117/8 (20), L<br/><br/><b>15. Super 10 - 25/3/16</b><br/><br/><img src='SA.png' width='30px' height='30px' alt='SA'> SA- 122/8 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 123/7 (19.4), W<br/><br/><b>1. Super 10 - 15/3/16</b><br/><br/><img src='NZ.png' width='30px' height='30px' alt='NZ'> NZ- 126/7 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='IND.png' width='30px' height='30px' alt='IND'> IND- 79/10 (18.1), L"})
        db.info.insert({'pos1':'30.690889','pos2':'76.7353423','data':"<b>19. Super 10 - 27/3/16</b><br/><br/><img src='AUS.png' width='30px' height='30px' alt='AUS'> AUS- 160/6 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='IND.png' width='30px' height='30px' alt='IND'> IND- 161/4 (19.1), W<br/><br/><b>14. Super 10 - 25/3/16</b><br/><br/><img src='AUS.png' width='30px' height='30px' alt='AUS'> AUS- 193/4 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='PAK.png' width='30px' height='30px' alt='PAK'> PAK- 158/5 (20), L<br/><br/><b>11. Super 10 - 22/3/16</b><br/><br/><img src='NZ.png' width='30px' height='30px' alt='NZ'> NZ- 180/5 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='PAK.png' width='30px' height='30px' alt='PAK'> PAK- 158/5 (20), W"})
        db.info.insert({'pos1':'28.6377383','pos2':'77.240835','data':"<b>21. Semifinal - 30/3/16</b><br/><br/><img src='NZ.png' width='30px' height='30px' alt='NZ'> NZ- 153/8 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='ENG.png' width='30px' height='30px' alt='ENG'> ENG- 159/3 (17.1), W<br/><br/><b>20. Super 10 - 28/3/16</b><br/><br/><img src='SL.png' width='30px' height='30px' alt='SL'> SL- 120/10 (19.3), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='SA.png' width='30px' height='30px' alt='SA'> SA- 122/2 (17.4), W<br/><br/><b>17. Super 10 - 26/3/16</b><br/><br/><img src='ENG.png' width='30px' height='30px' alt='ENG'> ENG- 171/4 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='SL.png' width='30px' height='30px' alt='SL'> SL- 161/8 (20), L<br/><br/><b>12. Super 10 - 23/3/16</b><br/><br/><img src='ENG.png' width='30px' height='30px' alt='ENG'> ENG- 142/7 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 127/9 (20), L"})
        db.info.insert({'pos1':'18.9388227','pos2':'72.8234744','data':"<b>22. Semifinal - 31/3/16</b><br/><br/><img src='IND.png' width='30px' height='30px' alt='IND'> IND- 192/2 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 196/3 (19.4), W<br/><br/><b>8. Super 10 - 20/3/16</b><br/><br/><img src='SA.png' width='30px' height='30px' alt='SA'> SA- 209/5 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='AFG.png' width='30px' height='30px' alt='AFG'> AFG- 172/10 (20), L<br/><br/><b>6. Super 10 - 18/3/16</b><br/><br/><img src='SA.png' width='30px' height='30px' alt='SA'> SA- 229/4 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='ENG.png' width='30px' height='30px' alt='ENG'> ENG- 230/8 (19.4), W<br/><br/><b>3. Super 10 - 16/3/16</b><br/><br/><img src='ENG.png' width='30px' height='30px' alt='ENG'> ENG- 182/6 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 183/4 (18.1), W"})
        db.info.insert({'pos1':'22.5646081','pos2':'88.3410758','data':"<b>23. The Final! - 3/4/16</b><br/><br/><img src='ENG.png' width='30px' height='30px' alt='ENG'> ENG- 155/9 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='WI.png' width='30px' height='30px' alt='WI'> WI- 161/6 (19.4), W<br/><br/><b>16. Super 10 - 26/3/16</b><br/><br/><img src='NZ.png' width='30px' height='30px' alt='NZ'> NZ- 145/8 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='BAN.png' width='30px' height='30px' alt='BAN'> BAN- 70/10 (15.4), L<br/><br/><b>7. Super 10 - 19/3/16</b><br/><br/><img src='PAK.png' width='30px' height='30px' alt='PAK'> PAK- 118/5 (18), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='IND.png' width='30px' height='30px' alt='IND'> IND- 161/6 (19.4), W<br/><br/><b>4. Super 10 - 17/3/16</b><br/><br/><img src='AFG.png' width='30px' height='30px' alt='AFG'> AFG- 153/7 (20), L<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='SL.png' width='30px' height='30px' alt='SL'> SL- 155/4 (18.5), W<br/><br/><b>2. Super 10 - 16/3/16</b><br/><br/><img src='PAK.png' width='30px' height='30px' alt='PAK'> PAK- 201/5 (20), W<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/><img src='BAN.png' width='30px' height='30px' alt='BAN'> BAN- 146/6 (20), L"})
    wss.send("Z132.1976097+76.3237065+"+db.info.find_one({'pos1': '32.1976097'})['data'])		
    wss.send("Z212.9788139+77.5974045+"+db.info.find_one({'pos1': '12.9788139'})['data'])		
    wss.send("Z321.0856225+78.9879812+"+db.info.find_one({'pos1': '21.0856225'})['data'])		
    wss.send("Z430.690889+76.7353423+"+db.info.find_one({'pos1': '30.690889'})['data'])		
    wss.send("Z528.6377383+77.240835+"+db.info.find_one({'pos1': '28.6377383'})['data'])		
    wss.send("Z618.9388227+72.8234744+"+db.info.find_one({'pos1': '18.9388227'})['data'])		
    wss.send("Z722.5646081+88.3410758+"+db.info.find_one({'pos1': '22.5646081'})['data'])		
		
    while(True):
        msg=wss.receive()#receiving message from user
        if(msg==None or msg=="Offline1234abc5678def90ghij"):#Checking if user has refreshed or closed tab
            break
        msg2=''
        msg2=wss.receive()#receiving message from user
        msg3=wss.receive()#receiving message from user
        msg4=wss.receive()#receiving message from user
        print('msg is               '+msg+'       msg2 is             '+msg2+"     msg3         "+msg3+"     msg4            "+msg4)
        msg5=wss.receive()#receiving message from user
        msg6=wss.receive()#receiving message from user
        msg7=wss.receive()#receiving message from user
        msg8=wss.receive()#receiving message from user
        msg9=wss.receive()#receiving message from user
        msg10=wss.receive()#receiving message from user
        msg11=wss.receive()#receiving message from user
        msg12=wss.receive()#receiving message from user
        msg13=wss.receive()#receiving message from user
        msg14=wss.receive()#receiving message from user
        db.fulli.insert({'pos1':msg,'match_no':msg2,'stage':msg3,'date':msg4,'1st_bat_team':msg5,'1st_bat_runs':msg6,'1st_bat_wickets':msg7,'1st_bat_overs':msg8,'1st_bat_results':msg9,'2nd_bat_team':msg10,'2nd_bat_runs':msg11,'2nd_bat_wickets':msg12,'2nd_bat_overs':msg13,'2nd_bat_results':msg14})
        print(msg+"Z"+"<br/><br/><b>"+msg2+". "+msg3+" - "+msg4+"</b><br/><br/>"+"<img src='"+msg5+".png' width='30px' height='30px' alt='"+msg5+"'> "+msg5+"- "+msg6+"/"+msg7+" ("+msg8+"), "+msg9+"<br/>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/>"+"<img src='"+msg10+".png' width='30px' height='30px' alt='"+msg10+"'> "+msg10+"- "+msg11+"/"+msg12+" ("+msg13+"), "+msg14)
        ws.send(msg+"Z"+"<br/><br/><b>"+msg2+". "+msg3+" - "+msg4+"</b><br/><br/>"+"<img src='"+msg5+".png' width='30px' height='30px' alt='"+msg5+"'> "+msg5+"- "+msg6+"/"+msg7+" ("+msg8+"), "+msg9+"<br/>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vs<br/>"+"<img src='"+msg10+".png' width='30px' height='30px' alt='"+msg10+"'> "+msg10+"- "+msg11+"/"+msg12+" ("+msg13+"), "+msg14)
        pos=wss.receive();
        data1=wss.receive();
        db.info.update_one(
        {"pos1":pos},
        {"$set": {
        "data":data1
        }
        }
        )
    db.usrinftst3.delete_one( { "Usr": strin1 } )#user now not in online users list
    db.Logtst.insert({
    "new_usr":"A user logs out"
    })
		
		
@get('/ws_signlog', apply=[websocket])
def ws_signlog(wss):
    client = MongoClient()
    db = client.datbas
    while(True):
        usrnm=wss.receive()#receiving username
        if(usrnm is None):#checking if connection is closed
            break
        usrid=wss.receive()#receiving usrid and other values
        pwd=wss.receive()
        stat=wss.receive()
        if(stat=='Signup'):#Checking the value of stat, here signup
            if(db.usrinftst.find_one({'$and':[#Finding the document in 'usrinf' colection with user id equal to the one entered
            {"UserID":usrid}
            ]}) is None):#if no user id found, i.e, no duplicate, then data inserted in database
                db.usrinftst.insert({
                "Username":usrnm,
                "UserID":usrid,
                "Password":pwd,
                "Status":stat,
                "Type":"User"
                })
                db.usrinftst2.insert({"Usr":usrid})#Used to later find out number of total users
                db.usrinftst1.insert({"Usr":usrid})
                str5=usrnm+" signed up with User ID: "+usrid
                db.Logtst.insert({"sign_up":str5})#Storing in log
                wss.send("Signup successfull, redirecting...")
            else:
                wss.send("Account already exists, please try again with different credentials")#If account already exists, then declined
        if(stat=='Login'):#Used for finding if Login entered
            if(db.usrinftst.find_one({'$and':[#Finding a document to see if it matches the given credentials
            {"UserID":usrid},{"Password":pwd},{"Username":usrnm}
            ]}) is not None):#If it matches, info is stored and user logged in
                db.usrinftst1.insert({"Usr":usrid})
                str6=usrnm+" logged in with User ID: "+usrid
                db.Logtst.insert({"login":str6})
                wss.send("Login successfull, redirecting...")
            else:
                wss.send("Wrong credentials, please try again!")#Otherwise error message displayed
				
@get('/ws_adm', apply=[websocket])#Defining functionality for a given route
def adm(wss):#Function to handle functionality
    client = MongoClient()
    db = client.datbas
    while(True):
        str1=wss.receive()#Receiving from adm.tpl a "Send" message which indicates to send current database values of total and online users
        if(str1 is None):
            break
        if(str1=="Send"):
            n=db.usrinftst2.count()#Counting documents in the 'usrinf2' collection
            n1=db.usrinftst3.count()
            wss.send("abc"+str(n)+":"+str(n1))#Sending the data in the form of a unique string, so that data can be extracted in adm.tpl

@get('/refresh')
def refresh():
    client = MongoClient()#Creating an instance of MongoDB
    db = client.datbas#Defining a database
    db.info.drop()#Clearing an entire collection
    db.fulli.drop()#Clearing an entire collection
    db.usrinftst.drop()#Clearing an entire collection
    db.usrinftst1.drop()#Clearing an entire collection
    db.usrinftst2.drop()#Clearing an entire collection
    db.usrinftst3.drop()#Clearing an entire collection

run(host='https://geomap001.herokuapp.com/', port=8080, server=GeventWebSocketServer)#Running the server and listening on the given port of the mentioned url
