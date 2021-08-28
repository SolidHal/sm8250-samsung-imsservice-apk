.class public Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ImDBHelper.java"


# static fields
.field public static final CHAT_MESSAGE_VIEW:Ljava/lang/String; = "chatmessageview"

.field public static final CLOUD_MESSAGE_PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cmstore"

.field public static final CREATE_CHAT_MESSAGE_VIEW:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS chatmessageview AS SELECT _id,_id AS msg_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,body AS content,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,content_type AS mime_type,status AS status,null AS reason_code,status AS read_status,direction AS direction,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 0 AND message_type < 3"

.field public static final CREATE_FILETRANSFER_VIEW:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS filetransferview AS SELECT _id,_id AS ft_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,file_path AS file,file_name AS filename,content_type AS mime_type,thumbnail_path AS fileicon,thumbnail_path AS fileicon_mime_type,direction AS direction,file_size AS filesize,bytes_transf AS transferred,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,state||\';\'||direction AS state,reason AS reason_code,status AS read_status,null AS file_expiration,null AS fileicon_expiration,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 1"

.field public static final CREATE_IMDNRECROUTE_TABLE:Ljava/lang/String; = "CREATE TABLE imdnrecroute(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT,uri TEXT,alias TEXT);"

.field public static final CREATE_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE message(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT NOT NULL,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,suggestion TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0,is_broadcast_msg INTEGER DEFAULT 0,is_vm2txt_msg INTEGER DEFAULT 0,extra_ft INTEGER DEFAULT 0,flag_mask INTEGER DEFAULT 0,revocation_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT \'\',device_id TEXT DEFAULT NULL,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,maap_traffic_type TEXT DEFAULT NULL,reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,messaging_tech INTEGER DEFAULT 0);"

.field public static final CREATE_NOTIFICATION_TABLE:Ljava/lang/String; = "CREATE TABLE notification(id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG);"

.field public static final CREATE_PARTICIPANT_TABLE:Ljava/lang/String; = "CREATE TABLE participant(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

.field public static final CREATE_SESSION_TABLE:Ljava/lang/String; = "CREATE TABLE session(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,own_sim_imsi TEXT,own_group_alias TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER DEFAULT 1, status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER DEFAULT 1, session_uri TEXT DEFAULT NULL,is_broadcast_msg INTEGER, inserted_time_stamp LONG, preferred_uri TEXT DEFAULT NULL,is_reusable INTEGER DEFAULT 1,subject_participant TEXT DEFAULT NULL,subject_timestamp LONG,icon_path TEXT DEFAULT NULL,icon_participant TEXT DEFAULT NULL,icon_timestamp LONG,icon_uri TEXT DEFAULT NULL,sim_imsi TEXT DEFAULT NULL,is_chatbot_role INTEGER DEFAULT 0,chat_mode INTEGER DEFAULT 0);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "rcsim.db"

.field public static final FILETRANSFER_VIEW:Ljava/lang/String; = "filetransferview"

.field public static final IMDNRECROUTE_TABLE:Ljava/lang/String; = "imdnrecroute"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MESSAGE_TABLE:Ljava/lang/String; = "message"

.field public static final NOTIFICATION_TABLE:Ljava/lang/String; = "notification"

.field public static final PARTICIPANT_TABLE:Ljava/lang/String; = "participant"

.field public static final SESSION_TABLE:Ljava/lang/String; = "session"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # I

    .line 209
    const-string/jumbo v0, "rcsim.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 210
    return-void
.end method

.method private createTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .line 545
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "imdnrecroute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "participant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 557
    const-string v0, ""

    return-object v0

    .line 555
    :cond_1
    const-string v0, "CREATE TABLE notification(id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG);"

    return-object v0

    .line 553
    :cond_2
    const-string v0, "CREATE TABLE imdnrecroute(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT,uri TEXT,alias TEXT);"

    return-object v0

    .line 551
    :cond_3
    const-string v0, "CREATE TABLE participant(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

    return-object v0

    .line 549
    :cond_4
    const-string v0, "CREATE TABLE message(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT NOT NULL,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,suggestion TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0,is_broadcast_msg INTEGER DEFAULT 0,is_vm2txt_msg INTEGER DEFAULT 0,extra_ft INTEGER DEFAULT 0,flag_mask INTEGER DEFAULT 0,revocation_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT \'\',device_id TEXT DEFAULT NULL,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,maap_traffic_type TEXT DEFAULT NULL,reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,messaging_tech INTEGER DEFAULT 0);"

    return-object v0

    .line 547
    :cond_5
    const-string v0, "CREATE TABLE session(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,own_sim_imsi TEXT,own_group_alias TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER DEFAULT 1, status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER DEFAULT 1, session_uri TEXT DEFAULT NULL,is_broadcast_msg INTEGER, inserted_time_stamp LONG, preferred_uri TEXT DEFAULT NULL,is_reusable INTEGER DEFAULT 1,subject_participant TEXT DEFAULT NULL,subject_timestamp LONG,icon_path TEXT DEFAULT NULL,icon_participant TEXT DEFAULT NULL,icon_timestamp LONG,icon_uri TEXT DEFAULT NULL,sim_imsi TEXT DEFAULT NULL,is_chatbot_role INTEGER DEFAULT 0,chat_mode INTEGER DEFAULT 0);"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x237a88eb -> :sswitch_4
        0x2dbdef33 -> :sswitch_3
        0x38eb0007 -> :sswitch_2
        0x76508296 -> :sswitch_1
        0x7fdaa667 -> :sswitch_0
    .end sparse-switch
.end method

.method private createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 483
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "CREATE VIEW IF NOT EXISTS chatmessageview AS SELECT _id,_id AS msg_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,body AS content,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,content_type AS mime_type,status AS status,null AS reason_code,status AS read_status,direction AS direction,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 0 AND message_type < 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v0, "CREATE VIEW IF NOT EXISTS filetransferview AS SELECT _id,_id AS ft_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,file_path AS file,file_name AS filename,content_type AS mime_type,thumbnail_path AS fileicon,thumbnail_path AS fileicon_mime_type,direction AS direction,file_size AS filesize,bytes_transf AS transferred,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,state||\';\'||direction AS state,reason AS reason_code,status AS read_status,null AS file_expiration,null AS fileicon_expiration,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public static makeParticipantRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 261
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-object v0
.end method

.method public static makeSession(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 39
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 271
    move-object/from16 v0, p0

    const-string/jumbo v1, "session_uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "sessionUri":Ljava/lang/String;
    const-wide/16 v28, 0x0

    .line 274
    .local v28, "insertedTimeStamp":J
    const-string/jumbo v2, "subject_participant"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v30

    .line 275
    .local v30, "subjectParticipant":Lcom/sec/ims/util/ImsUri;
    const-string/jumbo v2, "subject_timestamp"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 276
    .local v14, "subjectTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v21, v2

    .line 278
    .local v21, "subjectTimestamp":Ljava/util/Date;
    const-string v2, "icon_participant"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v31

    .line 279
    .local v31, "iconParticipant":Lcom/sec/ims/util/ImsUri;
    const-string v2, "icon_timestamp"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 280
    .local v12, "iconTime":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v24, v2

    .line 282
    .local v24, "iconTimestamp":Ljava/util/Date;
    new-instance v32, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 283
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 284
    const-string v2, "chat_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    const-string/jumbo v2, "own_sim_imsi"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    const-string/jumbo v2, "own_group_alias"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    const-string v2, "chat_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v7

    .line 288
    const-string/jumbo v2, "status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v8

    .line 289
    const-string/jumbo v2, "subject"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 290
    const-string v2, "is_muted"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v2, v11, :cond_0

    move/from16 v16, v11

    goto :goto_0

    :cond_0
    move/from16 v16, v10

    .line 291
    :goto_0
    const-string v2, "max_participants_count"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 292
    const-string v2, "direction"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v18

    .line 293
    const-string v2, "conversation_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 294
    const-string v2, "contribution_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 295
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v22, v2

    .line 296
    const-string v2, "is_reusable"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v11, :cond_2

    move/from16 v23, v11

    goto :goto_2

    :cond_2
    move/from16 v23, v10

    .line 298
    :goto_2
    const-string/jumbo v2, "sim_imsi"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 300
    const-string v2, "icon_path"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 302
    const-string v2, "icon_uri"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 303
    const-string v2, "is_chatbot_role"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v11, :cond_3

    move/from16 v34, v11

    goto :goto_3

    :cond_3
    move/from16 v34, v10

    .line 304
    :goto_3
    const-string v2, "chat_mode"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v27

    move-object/from16 v2, v32

    move/from16 v10, v16

    move/from16 v11, v17

    move-wide/from16 v35, v12

    .end local v12    # "iconTime":J
    .local v35, "iconTime":J
    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-wide/from16 v37, v14

    .end local v14    # "subjectTime":J
    .local v37, "subjectTime":J
    move-object/from16 v14, v20

    move-object/from16 v15, v22

    move/from16 v16, v23

    move-wide/from16 v17, v28

    move-object/from16 v19, v25

    move-object/from16 v20, v30

    move-object/from16 v22, v26

    move-object/from16 v23, v31

    move-object/from16 v25, v33

    move/from16 v26, v34

    invoke-direct/range {v2 .. v27}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;Ljava/lang/String;ZILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZJLjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V

    .line 282
    return-object v32
.end method

.method public static makeSessionRow(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Landroid/content/ContentValues;
    .locals 9
    .param p0, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 213
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "own_sim_imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnGroupAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "own_group_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_group_chat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chat_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    const-string/jumbo v2, "subject_timestamp"

    const-string/jumbo v3, "subject_participant"

    const-string/jumbo v4, "subject"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    nop

    .line 225
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    .line 224
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    nop

    .line 227
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    const-string v2, "icon_uri"

    const-string v3, "icon_timestamp"

    const-string v4, "icon_participant"

    const-string v8, "icon_path"

    if-eqz v1, :cond_5

    .line 235
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    nop

    .line 237
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v7

    .line 236
    :goto_3
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    nop

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 242
    :cond_5
    move-object v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_4
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_muted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getMaxParticipantsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_participants_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contribution_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    const-string/jumbo v1, "session_uri"

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_broadcast_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isReusable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_reusable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isChatbotRole()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_chatbot_role"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v3

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chat_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    return-object v0
.end method

.method private updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 489
    const-string v0, ","

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_bkp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "bkpTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragma table_info("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "pragma":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .local v3, "selectQry":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .local v4, "insertQry":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v5, "bkpTableColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 496
    .local v6, "updateTable":Z
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 497
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 498
    .local v8, "bkpCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_a

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-gtz v9, :cond_0

    goto/16 :goto_2

    .line 505
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v10, "name"

    if-eqz v9, :cond_2

    .line 507
    :cond_1
    :try_start_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 510
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ALTER TABLE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " RENAME TO "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->createTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 514
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 515
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 517
    :cond_3
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 518
    .local v9, "column":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 519
    const/4 v6, 0x1

    .line 520
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v11, :cond_3

    goto :goto_1

    .line 512
    .end local v9    # "column":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v9

    :try_start_5
    invoke-virtual {v0, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "bkpTable":Ljava/lang/String;
    .end local v2    # "pragma":Ljava/lang/String;
    .end local v3    # "selectQry":Ljava/lang/StringBuilder;
    .end local v4    # "insertQry":Ljava/lang/StringBuilder;
    .end local v5    # "bkpTableColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "updateTable":Z
    .end local v8    # "bkpCursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_0
    throw v0

    .line 526
    .restart local v1    # "bkpTable":Ljava/lang/String;
    .restart local v2    # "pragma":Ljava/lang/String;
    .restart local v3    # "selectQry":Ljava/lang/StringBuilder;
    .restart local v4    # "insertQry":Ljava/lang/StringBuilder;
    .restart local v5    # "bkpTableColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "updateTable":Z
    .restart local v8    # "bkpCursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 527
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_7
    if-eqz v6, :cond_8

    .line 528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 529
    const-string v0, " FROM "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 531
    const-string v0, ") "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 532
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update table: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 537
    if-eqz v8, :cond_9

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 540
    .end local v8    # "bkpCursor":Landroid/database/Cursor;
    :cond_9
    goto :goto_4

    .line 499
    .restart local v8    # "bkpCursor":Landroid/database/Cursor;
    :cond_a
    :goto_2
    :try_start_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " doesn\'t exist"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->createTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 537
    if-eqz v8, :cond_b

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 540
    :cond_b
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 502
    return-void

    .line 497
    :catchall_2
    move-exception v0

    if-eqz v8, :cond_c

    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v7

    :try_start_a
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "bkpTable":Ljava/lang/String;
    .end local v2    # "pragma":Ljava/lang/String;
    .end local v3    # "selectQry":Ljava/lang/StringBuilder;
    .end local v4    # "insertQry":Ljava/lang/StringBuilder;
    .end local v5    # "bkpTableColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "updateTable":Z
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_c
    :goto_3
    throw v0
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 540
    .end local v8    # "bkpCursor":Landroid/database/Cursor;
    .restart local v1    # "bkpTable":Ljava/lang/String;
    .restart local v2    # "pragma":Ljava/lang/String;
    .restart local v3    # "selectQry":Ljava/lang/StringBuilder;
    .restart local v4    # "insertQry":Ljava/lang/StringBuilder;
    .restart local v5    # "bkpTableColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "updateTable":Z
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception v0

    goto :goto_5

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "sqe":Landroid/database/SQLException;
    :try_start_b
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQL Exception while updating "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 540
    nop

    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :goto_5
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 541
    throw v0
.end method


# virtual methods
.method public makeFtMessage(Landroid/database/Cursor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 745
    const-string/jumbo v0, "transfer_mech"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 746
    .local v0, "mech":I
    const-string v1, "direction"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    .line 747
    .local v2, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    const-string/jumbo v3, "remote_uri"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "uriStr":Ljava/lang/String;
    const-string/jumbo v4, "sim_imsi"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 751
    .local v5, "phoneId":I
    if-nez v0, :cond_0

    .line 752
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v6

    .local v6, "builder":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<*>;"
    goto :goto_0

    .line 753
    .end local v6    # "builder":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<*>;"
    :cond_0
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v6, :cond_1

    .line 754
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object v6

    .restart local v6    # "builder":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<*>;"
    goto :goto_0

    .line 756
    .end local v6    # "builder":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<*>;"
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v6

    .line 759
    .restart local v6    # "builder":Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<*>;"
    :goto_0
    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 760
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 761
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 762
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v7

    .line 763
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v7

    .line 764
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 765
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 766
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 767
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->id(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 768
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 769
    const-string v7, "chat_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 770
    const/4 v7, 0x0

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v7

    :goto_1
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 771
    const-string/jumbo v8, "sender_alias"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 772
    const-string v8, "content_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 773
    const-string/jumbo v8, "sent_timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 774
    const-string v8, "inserted_timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 775
    const-string v8, "delivered_timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->deliveredTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 776
    const-string v8, "displayed_timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->displayedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 777
    const-string v8, "message_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 778
    const-string v8, "message_isslm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 779
    const-string v8, "file_path"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 780
    const-string v8, "file_name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 781
    const-string v8, "file_size"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v1, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 782
    const-string v8, "file_transfer_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 783
    const-string v8, "bytes_transf"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v1, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->transferredBytes(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 784
    const-string/jumbo v8, "reason"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setCancelReason(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 785
    const-string v8, "ft_status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 786
    const-string/jumbo v8, "thumbnail_path"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 787
    const-string v8, "is_resumable"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setResumableOptions(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 788
    const-string v8, "imdn_message_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 789
    const-string v8, "imdn_original_to"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 791
    const-string v8, "notification_disposition_mask"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->decode(I)Ljava/util/Set;

    move-result-object v8

    .line 790
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 792
    const-string v8, "notification_status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->notificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 794
    const-string v8, "disposition_notification_status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v8

    .line 793
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->desiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 795
    const-string/jumbo v8, "state"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 796
    const-string v8, "not_displayed_counter"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 797
    const-string/jumbo v8, "request_message_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 798
    const-string v8, "is_resizable"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_4

    move v8, v10

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 799
    const-string v8, "is_broadcast_msg"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_5

    move v8, v10

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 800
    const-string v8, "body"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 801
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 802
    const-string v8, "extra_ft"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_6

    move v9, v10

    :cond_6
    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 803
    const-string v8, "conversation_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 804
    const-string v8, "contribution_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 805
    const-string v8, "device_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 806
    const-string v8, "flag_mask"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 808
    const-string/jumbo v8, "revocation_status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v8

    .line 807
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->revocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 809
    const-string v8, "file_disposition"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_5

    .line 810
    :cond_7
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v7

    .line 809
    :goto_5
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 811
    const-string/jumbo v7, "playing_length"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setPlayingLength(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 812
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 813
    const-string v4, "maap_traffic_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 814
    const-string v4, "messaging_tech"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 816
    instance-of v1, v6, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    if-eqz v1, :cond_8

    .line 817
    move-object v1, v6

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const-string v4, "data_url"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->dataUrl(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 819
    :cond_8
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    return-object v1
.end method

.method public makeFtMessageRow(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 606
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_filetransfer"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v2, "remote_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sender_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getInsertedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "inserted_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 615
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDeliveredTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "delivered_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "file_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "file_disposition"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getPlayingLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "playing_length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileTransferId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_transfer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReasonId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bytes_transf"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ft_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "thumbnail_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getResumableOptionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_resumable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferMech()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "transfer_mech"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v1, :cond_3

    .line 635
    move-object v1, p1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->getDataUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDispositionNotification()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->encode(Ljava/util/Set;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification_disposition_mask"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "disposition_notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imdn_message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getIsSlmSvcMsg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "message_isslm"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 642
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "displayed_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 643
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getNotDisplayedCounter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "not_displayed_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "request_message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getIsResizable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_resizable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 646
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getSentTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sent_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 648
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "message_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isBroadcastMsg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_broadcast_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getExtraFt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "extra_ft"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 651
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContributionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contribution_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFlagMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flag_mask"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "revocation_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maap_traffic_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "messaging_tech"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    return-object v0
.end method

.method public makeImMessage(Landroid/database/Cursor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 690
    const-string/jumbo v0, "remote_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "uriStr":Ljava/lang/String;
    const-string v1, "content_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "contentType":Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "body":Ljava/lang/String;
    const-string/jumbo v3, "sim_imsi"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 696
    .local v4, "phoneId":I
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v5

    .line 697
    invoke-virtual {v5, p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 698
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 699
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 700
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v5

    .line 701
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 702
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 703
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->id(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 704
    const-string v6, "direction"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 705
    const-string v6, "chat_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 706
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 707
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 708
    const-string/jumbo v6, "suggestion"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 709
    const-string/jumbo v6, "sender_alias"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 710
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 711
    const-string v6, "inserted_timestamp"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 712
    const-string/jumbo v6, "status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 714
    const-string v6, "notification_disposition_mask"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->decode(I)Ljava/util/Set;

    move-result-object v6

    .line 713
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 715
    const-string v6, "notification_status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->notificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 717
    const-string v6, "disposition_notification_status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v6

    .line 716
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->desiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 718
    const-string/jumbo v6, "sent_timestamp"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 719
    const-string v6, "delivered_timestamp"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->deliveredTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 720
    const-string v6, "displayed_timestamp"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->displayedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 721
    const-string v6, "message_type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 722
    const-string v6, "message_isslm"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 723
    const-string v6, "imdn_message_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 724
    const-string v6, "imdn_original_to"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 725
    const-string v6, "not_displayed_counter"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 726
    const-string/jumbo v6, "request_message_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 727
    const-string v6, "is_broadcast_msg"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 728
    const-string v6, "is_vm2txt_msg"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v8, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 729
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 730
    const-string v6, "conversation_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 731
    const-string v6, "contribution_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 732
    const-string v6, "device_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 733
    const-string v6, "flag_mask"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 735
    const-string/jumbo v6, "revocation_status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v6

    .line 734
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->revocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 736
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 737
    const-string v5, "maap_traffic_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 738
    const-string v5, "messaging_tech"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 739
    const-string/jumbo v5, "reference_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->referenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 740
    const-string/jumbo v5, "reference_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 741
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3

    .line 695
    return-object v3
.end method

.method public makeImMessageRow(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 562
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 564
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_filetransfer"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v2, "remote_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sender_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getSuggestion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suggestion"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDispositionNotification()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->encode(Ljava/util/Set;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification_disposition_mask"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 572
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "disposition_notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getInsertedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "inserted_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getSentTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "sent_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDeliveredTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "delivered_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getExtInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "displayed_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "message_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getIsSlmSvcMsg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "message_isslm"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 582
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getNotDisplayedCounter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "not_displayed_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imdn_message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getImdnOriginalTo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imdn_original_to"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "request_message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->isBroadcastMsg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_broadcast_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->isVM2TextMsg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_vm2txt_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getContributionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contribution_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getFlagMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flag_mask"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "revocation_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maap_traffic_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "messaging_tech"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reference_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getReferenceType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reference_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-object v0
.end method

.method public makeImdnRecRoute(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 833
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    .line 834
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 835
    const-string v0, "message_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 836
    const-string v0, "imdn_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 838
    const-string v0, "alias"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-object v6
.end method

.method public makeImdnRecRouteRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "imdnRecRoute"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    .line 664
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 665
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 666
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getImdnMsgId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteUri()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteDispName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-object v0
.end method

.method public makeMessageNotificationRow(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "sender"    # Ljava/lang/String;

    .line 673
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 675
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string/jumbo v1, "sender_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    return-object v0
.end method

.method public makeMessageNotificationUpdateRow(JI)Landroid/content/ContentValues;
    .locals 3
    .param p1, "timeStamp"    # J
    .param p3, "status"    # I

    .line 683
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 685
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    return-object v0
.end method

.method public makeParticipant(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 823
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 824
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 825
    const-string v0, "chat_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 826
    const-string/jumbo v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    .line 827
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v4

    .line 828
    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 829
    const-string v0, "alias"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 823
    return-object v7
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 315
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ImDBHelper onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "CREATE TABLE session(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,own_sim_imsi TEXT,own_group_alias TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER DEFAULT 1, status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER DEFAULT 1, session_uri TEXT DEFAULT NULL,is_broadcast_msg INTEGER, inserted_time_stamp LONG, preferred_uri TEXT DEFAULT NULL,is_reusable INTEGER DEFAULT 1,subject_participant TEXT DEFAULT NULL,subject_timestamp LONG,icon_path TEXT DEFAULT NULL,icon_participant TEXT DEFAULT NULL,icon_timestamp LONG,icon_uri TEXT DEFAULT NULL,sim_imsi TEXT DEFAULT NULL,is_chatbot_role INTEGER DEFAULT 0,chat_mode INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v0, "CREATE TABLE message(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT NOT NULL,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,suggestion TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0,is_broadcast_msg INTEGER DEFAULT 0,is_vm2txt_msg INTEGER DEFAULT 0,extra_ft INTEGER DEFAULT 0,flag_mask INTEGER DEFAULT 0,revocation_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT \'\',device_id TEXT DEFAULT NULL,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,maap_traffic_type TEXT DEFAULT NULL,reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,messaging_tech INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    const-string v0, "CREATE TABLE participant(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    const-string v0, "CREATE TABLE imdnrecroute(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT,uri TEXT,alias TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const-string v0, "CREATE TABLE notification(id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->createView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 322
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 474
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db downgrade : oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string/jumbo v0, "session"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 476
    const-string v0, "message"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 477
    const-string/jumbo v0, "participant"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 478
    const-string v0, "imdnrecroute"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 479
    const-string v0, "notification"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 480
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 309
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ImDBHelper onOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 326
    const-string v0, "message_id column already exists"

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db upgrade: oldVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string/jumbo v1, "pragma table_info(session)"

    .line 328
    .local v1, "pragma":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v2, "columnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 331
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "column":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 334
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v4    # "column":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 341
    :cond_1
    const-string/jumbo v4, "preferred_uri"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 342
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "column preferred_uri for ims6 does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    const/4 p2, 0x1

    .line 345
    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 338
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_3
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SESSION_TABLE doesn\'t exist"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    if-eqz v3, :cond_5

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 339
    :cond_5
    return-void

    .line 329
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_6

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "pragma":Ljava/lang/String;
    .end local v2    # "columnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
    .end local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p2    # "oldVersion":I
    .end local p3    # "newVersion":I
    :cond_6
    :goto_1
    throw v4
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    .line 345
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "pragma":Ljava/lang/String;
    .restart local v2    # "columnNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
    .restart local p1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2    # "oldVersion":I
    .restart local p3    # "newVersion":I
    :catch_0
    move-exception v3

    .line 346
    .local v3, "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL Exception while querying pragma : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v3    # "sqe":Landroid/database/SQLException;
    :goto_2
    const/16 v3, 0x11

    if-ne p2, v3, :cond_7

    .line 352
    :try_start_7
    const-string v3, "ALTER TABLE message ADD COLUMN is_vm2txt_msg INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 355
    goto :goto_3

    .line 353
    :catch_1
    move-exception v3

    .line 354
    .restart local v3    # "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "is_vm2txt_msg column already exists"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v3    # "sqe":Landroid/database/SQLException;
    :goto_3
    const/16 p2, 0x12

    .line 359
    :cond_7
    const/16 v3, 0x12

    if-ne p2, v3, :cond_8

    .line 361
    :try_start_8
    const-string v3, "ALTER TABLE message ADD COLUMN file_disposition INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    const-string v3, "ALTER TABLE message ADD COLUMN playing_length INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 365
    :catch_2
    move-exception v3

    .line 366
    .restart local v3    # "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "file_disposition column already exists"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 363
    .end local v3    # "sqe":Landroid/database/SQLException;
    :catch_3
    move-exception v3

    .line 364
    .local v3, "sqle":Landroid/database/sqlite/SQLiteException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "file_disposition or playing_length columns already exists"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v3    # "sqle":Landroid/database/sqlite/SQLiteException;
    :goto_4
    nop

    .line 368
    :goto_5
    const/16 p2, 0x13

    .line 371
    :cond_8
    const/16 v3, 0x13

    if-ne p2, v3, :cond_9

    .line 373
    :try_start_9
    const-string v3, "ALTER TABLE imdnrecroute ADD COLUMN message_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_4

    .line 376
    goto :goto_6

    .line 374
    :catch_4
    move-exception v3

    .line 375
    .local v3, "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v3    # "sqe":Landroid/database/SQLException;
    :goto_6
    :try_start_a
    const-string v3, "ALTER TABLE notification ADD COLUMN message_id INTEGER DEFAULT 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_5

    .line 381
    goto :goto_7

    .line 379
    :catch_5
    move-exception v3

    .line 380
    .restart local v3    # "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v3    # "sqe":Landroid/database/SQLException;
    :goto_7
    const/16 p2, 0x14

    .line 385
    :cond_9
    const/16 v0, 0x14

    const-string/jumbo v3, "sim_imsi column already exists"

    if-ne p2, v0, :cond_a

    .line 387
    :try_start_b
    const-string v0, "ALTER TABLE message ADD COLUMN sim_imsi TEXT DEFAULT \'\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_6

    .line 390
    goto :goto_8

    .line 388
    :catch_6
    move-exception v0

    .line 389
    .local v0, "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_8
    const/16 p2, 0x15

    .line 394
    :cond_a
    const/16 v0, 0x15

    if-ne p2, v0, :cond_b

    .line 396
    :try_start_c
    const-string v0, "ALTER TABLE message ADD COLUMN messaging_tech INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_7

    .line 399
    goto :goto_9

    .line 397
    :catch_7
    move-exception v0

    .line 398
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "messaging_tech column already exists"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_9
    const/16 p2, 0x16

    .line 403
    :cond_b
    const/16 v0, 0x16

    if-ne p2, v0, :cond_c

    .line 407
    :try_start_d
    const-string v0, "ALTER TABLE message ADD COLUMN suggestion TEXT DEFAULT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_8

    .line 410
    goto :goto_a

    .line 408
    :catch_8
    move-exception v0

    .line 409
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "suggestion column already exists"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_a
    :try_start_e
    const-string v0, "ALTER TABLE session ADD COLUMN sim_imsi TEXT DEFAULT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_9

    .line 415
    goto :goto_b

    .line 413
    :catch_9
    move-exception v0

    .line 414
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_b
    const/16 p2, 0x17

    .line 419
    :cond_c
    const/16 v0, 0x17

    if-ne p2, v0, :cond_d

    .line 421
    :try_start_f
    const-string v0, "ALTER TABLE session ADD COLUMN icon_uri TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_a

    .line 424
    goto :goto_c

    .line 422
    :catch_a
    move-exception v0

    .line 423
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "icon_uri column already exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_c
    const/16 p2, 0x18

    .line 428
    :cond_d
    const/16 v0, 0x18

    if-ne p2, v0, :cond_e

    .line 430
    :try_start_10
    const-string v0, "ALTER TABLE session ADD COLUMN is_chatbot_role INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_b

    .line 433
    goto :goto_d

    .line 431
    :catch_b
    move-exception v0

    .line 432
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "is_chatbot_role column already exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_d
    const/16 p2, 0x19

    .line 437
    :cond_e
    const/16 v0, 0x19

    if-ne p2, v0, :cond_f

    .line 439
    :try_start_11
    const-string v0, "ALTER TABLE message ADD COLUMN maap_traffic_type TEXT DEFAULT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_c

    .line 442
    goto :goto_e

    .line 440
    :catch_c
    move-exception v0

    .line 441
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "maap_traffic_type column already exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_e
    const/16 p2, 0x1a

    .line 446
    :cond_f
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_10

    .line 448
    :try_start_12
    const-string v0, "ALTER TABLE session ADD COLUMN chat_mode INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_d

    .line 451
    goto :goto_f

    .line 449
    :catch_d
    move-exception v0

    .line 450
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "chat_mode column already exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_f
    const/16 p2, 0x1b

    .line 455
    :cond_10
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_11

    .line 457
    :try_start_13
    const-string v0, "ALTER TABLE message ADD COLUMN reference_id TEXT DEFAULT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_e

    .line 460
    goto :goto_10

    .line 458
    :catch_e
    move-exception v0

    .line 459
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "reference_id column already exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_10
    :try_start_14
    const-string v0, "ALTER TABLE message ADD COLUMN reference_type TEXT DEFAULT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_f

    .line 465
    goto :goto_11

    .line 463
    :catch_f
    move-exception v0

    .line 464
    .restart local v0    # "sqe":Landroid/database/SQLException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "reference_type column already exists"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v0    # "sqe":Landroid/database/SQLException;
    :goto_11
    const/16 p2, 0x1c

    .line 468
    :cond_11
    return-void
.end method
