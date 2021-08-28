.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
.super Ljava/lang/Object;
.source "CloudMessageBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CALLLOG_TABLE:Ljava/lang/String; = "calllog"

.field private static final CREATE_CALLLOG_TABLE:Ljava/lang/String; = "CREATE TABLE calllog(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,number TEXT, presentation INTEGER,type INTEGER,starttime INTEGER,date INTEGER, duration INTEGER,data_usage INTEGER,countryiso TEXT,geocoded_location TEXT,logtype INTEGER,frequent INTEGER,seen INTEGER,answeredby INTEGER,device_name TEXT,correlation_id TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_FAX_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE fax_message(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,sender TEXT,direction INTEGER,transaction_id TEXT,file_name TEXT,content_type TEXT,file_size INTEGER,file_path TEXT,recipients TEXT,date INTEGER,flagRead INTEGER,deliverstatus INTEGER,error_message TEXT,uploadstatus INTEGER,correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_FAX_RECEIVER_TABLE:Ljava/lang/String; = "CREATE TABLE fax_receivers(_bufferdbid INTEGER PRIMARY KEY,linenum TEXT, _id INTEGER,receiver TEXT);"

.field private static final CREATE_MMSADDR_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE addr(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, msg_id INTEGER, contact_id INTEGER, address TEXT, type INTEGER, charset INTEGER);"

.field private static final CREATE_MMSPART_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE part(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, mid INTEGER, seq INTEGER, ct TEXT, name TEXT, chset INTEGER, cd TEXT, fn TEXT, cid TEXT, cl TEXT, ctt_s INTEGER, ctt_t TEXT, _data TEXT, text TEXT, payloadurl TEXT);"

.field private static final CREATE_MMSPDU_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE pdu(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, thread_id INTEGER, date INTEGER, date_sent INTEGER, msg_box INTEGER, read INTEGER DEFAULT 0, m_id TEXT, sub TEXT,sub_cs INTEGER, ct_t TEXT, ct_l TEXT, exp INTEGER, m_cls TEXT, m_type INTEGER, v INTEGER, m_size INTEGER, pri INTEGER, rr INTEGER, rpt_a INTEGER, resp_st INTEGER, st INTEGER, tr_id TEXT, retr_st INTEGER, retr_txt TEXT, retr_txt_cs INTEGER, read_status INTEGER, ct_cls INTEGER, resp_txt TEXT, d_tm INTEGER, d_rpt INTEGER, locked INTEGER, seen INTEGER, sim_slot INTEGER, sim_imsi TEXT, deletable INTEGER, hidden INTEGER, app_id INTEGER, msg_id INTEGER, callback_set INTEGER, reserved INTEGER, text_only INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_id TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

.field private static final CREATE_MULT_LINE_STATUS_TABLE:Ljava/lang/String; = "CREATE TABLE multilinestatus(_bufferdbid INTEGER PRIMARY KEY,linenum TEXT,messagetype INTEGER,initsync_cusor TEXT DEFAULT NULL,initsync_status INTEGER DEFAULT 0);"

.field private static final CREATE_RCS_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE rcsimft(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, sim_imsi TEXT DEFAULT \'\',file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0, correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, payloadurl TEXT, payloadpartThumb TEXT, payloadpartThumb_filename TEXT, payloadpartFull TEXT, payloadencoding INTEGER DEFAULT 0, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

.field private static final CREATE_RCS_NOTIFICATION_TABLE:Ljava/lang/String; = "CREATE TABLE notification(_bufferdbid INTEGER PRIMARY KEY,id INTEGER,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_RCS_PARTICIPANT_TABLE:Ljava/lang/String; = "CREATE TABLE participant(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

.field private static final CREATE_RCS_SESSION_TABLE:Ljava/lang/String; = "CREATE TABLE session(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,own_sim_imsi TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER,status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER, session_uri TEXT DEFAULT NULL, preferred_uri TEXT DEFAULT NULL,linenum TEXT DEFAULT NULL,icon_path TEXT,icon_participant TEXT,sim_imsi TEXT DEFAULT NULL,icon_timestamp TEXT);"

.field private static final CREATE_SMS_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE sms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, address TEXT, person INTEGER, date INTEGER, date_sent INTEGER, protocol INTEGER, read INTEGER DEFAULT 0, status INTEGER, type INTEGER, reply_path_present INTEGER, subject TEXT, body TEXT, service_center TEXT, locked INTEGER, error_code INTEGER, seen INTEGER, deletable INTEGER, sim_slot INTEGER, sim_imsi TEXT, hidden INTEGER, group_id INTEGER, group_type INTEGER, delivery_date INTEGER, app_id INTEGER, msg_id INTEGER, callback_number TEXT, reserved INTEGER, pri INTEGER, teleservice_id INTEGER, link_url TEXT, svc_cmd INTEGER, svc_cmd_content TEXT, roam_pending INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

.field private static final CREATE_SUMMARY_TABLE:Ljava/lang/String; = "CREATE TABLE summarytable(_bufferdbid INTEGER PRIMARY KEY,messagetype INTEGER DEFAULT 0, correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, linenum TEXT, lastmodseq INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_GREETING_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_greeting(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,fileName TEXT,mimeType TEXT,size INTEGER,filepath TEXT,flags INTEGER,duration INTEGER,account_number TEXT,messageId TEXT,greetingtype INTEGER,error_message TEXT,uploadstatus INTEGER,correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_MESSAGES_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_messages(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,timeStamp INTEGER,text TEXT,flagRead INTEGER,flags INTEGER,messageId TEXT,sender TEXT,recipient TEXT,fileName TEXT,mimeType INTEGER,size INTEGER,filepath TEXT,messageKey TEXT,correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_PIN_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_pin(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,oldpwd TEXT, newpwd TEXT,error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_PROFILE_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_profile(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,cos INTEGER,greeting_type TEXT,status TEXT NOT NULL DEFAULT U, password TEXT,nut TEXT,language TEXT,isblocked TEXT,vvmon TEXT,email_addr1 TEXT,email_addr2 TEXT,line_number TEXT,user_authenticated INTEGER NOT NULL DEFAULT 0, profile_changetype INTEGER, error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "cloudmessagebuffertable.db"

.field private static final DATABASE_VERSION:I = 0x9

.field private static final FAX_MESSAGE_TABLE:Ljava/lang/String; = "fax_message"

.field private static final FAX_RECEIVER_TABLE:Ljava/lang/String; = "fax_receivers"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MMSADDR_MESSAGE_TABLE:Ljava/lang/String; = "addr"

.field private static final MMSPART_MESSAGE_TABLE:Ljava/lang/String; = "part"

.field private static final MMSPDU_MESSAGE_TABLE:Ljava/lang/String; = "pdu"

.field private static final MULT_LINE_STATUS_TABLE:Ljava/lang/String; = "multilinestatus"

.field private static final NOTIFICATION_TABLE:Ljava/lang/String; = "notification"

.field private static final PARTICIPANT_TABLE:Ljava/lang/String; = "participant"

.field private static final RCS_MESSAGE_TABLE:Ljava/lang/String; = "rcsimft"

.field private static final SESSION_TABLE:Ljava/lang/String; = "session"

.field private static final SMS_MESSAGE_TABLE:Ljava/lang/String; = "sms"

.field private static final SUMMARY_TABLE:Ljava/lang/String; = "summarytable"

.field private static final VVM_GREETING_TABLE:Ljava/lang/String; = "vvm_greeting"

.field private static final VVM_MESSAGES_TABLE:Ljava/lang/String; = "vvm_messages"

.field private static final VVM_PIN_TABLE:Ljava/lang/String; = "vvm_pin"

.field private static final VVM_PROFILE_TABLE:Ljava/lang/String; = "vvm_profile"

.field private static sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;


# instance fields
.field public final mContext:Landroid/content/Context;

.field private final mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

.field private mMapUriTableName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    .line 92
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "summarytable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "addr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pdu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "part"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rcsimft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "participant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "calllog"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vvm_messages"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vvm_pin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vvm_greeting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vvm_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fax_message"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fax_receivers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multilinestatus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private commonInsertTable(ILandroid/content/ContentValues;)J
    .locals 8
    .param p1, "tableindex"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1042
    .local v0, "tableName":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 1043
    .local v1, "row":J
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1044
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_0

    .line 1045
    const-wide/16 v4, 0x0

    return-wide v4

    .line 1047
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1049
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    move-wide v1, v4

    .line 1050
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    nop

    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1057
    goto :goto_1

    .line 1056
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 1053
    :catch_0
    move-exception v4

    .line 1054
    .local v4, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v5, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL exception while insertTable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    nop

    .end local v4    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1051
    :catch_1
    move-exception v4

    .line 1052
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v5, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteFullException insertTable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    nop

    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_0

    .line 1059
    :goto_1
    return-wide v1

    .line 1056
    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1057
    throw v4
.end method

.method private commonQueryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "tableindex"    # I
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 1080
    move-object v1, p0

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1081
    .local v10, "tableName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1082
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1083
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v12, :cond_0

    .line 1084
    const/4 v0, 0x0

    return-object v0

    .line 1086
    :cond_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1088
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, v10

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 1090
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    nop

    :goto_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1095
    goto :goto_1

    .line 1094
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1096
    :goto_1
    return-object v11

    .line 1094
    :goto_2
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1095
    throw v0
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 119
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 115
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private matchPreferredUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z
    .locals 2
    .param p1, "prefUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "sessionPrefUri"    # Lcom/sec/ims/util/ImsUri;

    .line 1260
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1261
    return v0

    .line 1263
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/sec/ims/util/ImsUri;->EMPTY:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    return v0

    .line 1266
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private querySession(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1270
    const/4 v0, 0x0

    .line 1272
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1273
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 1274
    const/4 v1, 0x0

    return-object v1

    .line 1276
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1278
    :try_start_0
    const-string/jumbo v2, "session"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 1279
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1284
    goto :goto_1

    .line 1283
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1280
    :catch_0
    move-exception v1

    .line 1281
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying session. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1283
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1285
    :goto_1
    return-object v0

    .line 1283
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1284
    throw v1
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 5

    .line 1162
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cleanAllBufferDB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 1165
    return-void

    .line 1167
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1170
    :try_start_0
    const-string v1, "delete from sms"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    const-string v1, "delete from pdu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1172
    const-string v1, "delete from addr"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1173
    const-string v1, "delete from part"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    const-string v1, "delete from session"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1175
    const-string v1, "delete from rcsimft"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1176
    const-string v1, "delete from participant"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1177
    const-string v1, "delete from notification"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1178
    const-string v1, "delete from multilinestatus"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    const-string v1, "delete from calllog"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1180
    const-string v1, "delete from vvm_messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1181
    const-string v1, "delete from vvm_pin"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1182
    const-string v1, "delete from vvm_greeting"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    const-string v1, "delete from vvm_profile"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1184
    const-string v1, "delete from fax_message"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1185
    const-string v1, "delete from summarytable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v1

    .line 1188
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while deleting messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1191
    nop

    .line 1192
    return-void

    .line 1190
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1191
    throw v1
.end method

.method public deleteTable(ILjava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "tableindex"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 982
    .local v0, "tableName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 983
    .local v1, "rowsDeleted":I
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 984
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 985
    const/4 v3, 0x0

    return v3

    .line 987
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 989
    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 990
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/Util;->deleteFilesinMmsBufferFolder()V

    .line 992
    :cond_1
    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 993
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    nop

    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 998
    goto :goto_1

    .line 997
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 994
    :catch_0
    move-exception v3

    .line 995
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while querying messages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    nop

    .end local v3    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 999
    :goto_1
    return v1

    .line 997
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 998
    throw v3
.end method

.method public deleteTablewithBufferDbId(IJ)I
    .locals 4
    .param p1, "tableindex"    # I
    .param p2, "primarykey"    # J

    .line 1140
    const-string v0, "_bufferdbid=?"

    .line 1141
    .local v0, "select":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1142
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public deleteTablewithResUrl(ILjava/lang/String;)I
    .locals 6
    .param p1, "tableindex"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 1130
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->extractObjIdFromResUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "objId":Ljava/lang/String;
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v2, "res_url GLOB ? AND linenum=?"

    .line 1134
    .local v2, "select":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 1135
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J
    .locals 2
    .param p1, "tableindex"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 1037
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonInsertTable(ILandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertTable(ILandroid/content/ContentValues;)J
    .locals 2
    .param p1, "tableindex"    # I
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 1033
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonInsertTable(ILandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public load()V
    .locals 2

    .line 123
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 126
    return-void
.end method

.method public queryMMSPARTMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 939
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 940
    const/4 v1, 0x0

    return-object v1

    .line 942
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 944
    :try_start_0
    const-string/jumbo v2, "part"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 947
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 952
    goto :goto_1

    .line 951
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 948
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 953
    :goto_1
    return-object v0

    .line 951
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 952
    throw v1
.end method

.method public queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 918
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 919
    const/4 v1, 0x0

    return-object v1

    .line 921
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 923
    :try_start_0
    const-string/jumbo v2, "pdu"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 926
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 931
    goto :goto_1

    .line 930
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 927
    :catch_0
    move-exception v1

    .line 928
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 932
    :goto_1
    return-object v0

    .line 930
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 931
    throw v1
.end method

.method public queryRCSImdnMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 810
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 811
    const/4 v1, 0x0

    return-object v1

    .line 813
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 815
    :try_start_0
    const-string v2, "notification"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 817
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 822
    goto :goto_1

    .line 821
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 818
    :catch_0
    move-exception v1

    .line 819
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 823
    :goto_1
    return-object v0

    .line 821
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 822
    throw v1
.end method

.method public queryRCSImdnUseImdnId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .line 1147
    const-string v6, "imdn_id=?"

    .line 1148
    .local v6, "select":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 1149
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRCSImdnUseImdnIdAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "telUri"    # Ljava/lang/String;

    .line 1154
    const-string v6, "imdn_id=? AND sender_uri=?"

    .line 1156
    .local v6, "select":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 1157
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 790
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 791
    const/4 v1, 0x0

    return-object v1

    .line 793
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 795
    :try_start_0
    const-string/jumbo v2, "rcsimft"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 797
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    goto :goto_1

    .line 801
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 798
    :catch_0
    move-exception v1

    .line 799
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 803
    :goto_1
    return-object v0

    .line 801
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    throw v1
.end method

.method public querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 894
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 895
    const/4 v1, 0x0

    return-object v1

    .line 897
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 899
    :try_start_0
    const-string/jumbo v2, "sms"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 901
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 906
    goto :goto_1

    .line 905
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 907
    :goto_1
    return-object v0

    .line 905
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 906
    throw v1
.end method

.method public querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;

    .line 1290
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySessionByChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "chat_id=?"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySession(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 1253
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySessionByConversationId ConversationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "conversation_id=?"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySession(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public querySessionByParticipants(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;)Landroid/database/Cursor;
    .locals 16
    .param p2, "preferredUri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 1195
    .local p1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v1, p0

    const-string v0, "chat_id"

    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "querySessionByParticipants participants="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " preferredUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1198
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1199
    return-object v3

    .line 1201
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1202
    const/4 v12, 0x0

    .line 1204
    .local v12, "chatId":Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v13, v4

    .line 1205
    .local v13, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "session, participant"

    invoke-virtual {v13, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1206
    const-string v4, "%s.%s=%s.%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "session"

    const/4 v14, 0x0

    aput-object v6, v5, v14

    const/4 v15, 0x1

    aput-object v0, v5, v15

    const-string/jumbo v6, "participant"

    const/4 v11, 0x2

    aput-object v6, v5, v11

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1209
    const-string/jumbo v0, "session.chat_id"

    const-string v4, "group_concat(participant.uri)"

    const-string/jumbo v5, "session.preferred_uri"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    .line 1215
    .local v6, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "session.chat_id"

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v4, v13

    move-object v5, v2

    move v3, v11

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v4, v0

    .line 1217
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_7

    .line 1218
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1219
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1220
    .local v0, "sessionPrefUri":Lcom/sec/ims/util/ImsUri;
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1221
    .local v5, "p":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1222
    goto :goto_0

    .line 1225
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1226
    .local v7, "comp":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v14

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 1227
    .local v11, "str":Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1226
    nop

    .end local v11    # "str":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    goto :goto_1

    .line 1230
    :cond_2
    move-object/from16 v3, p1

    :try_start_2
    invoke-interface {v3, v7}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    move-object/from16 v8, p2

    :try_start_3
    invoke-direct {v1, v8, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->matchPreferredUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1232
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1233
    .end local v12    # "chatId":Ljava/lang/String;
    .local v9, "chatId":Ljava/lang/String;
    :try_start_4
    sget-object v10, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Chat found:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1234
    move-object v12, v9

    goto :goto_6

    .line 1215
    .end local v0    # "sessionPrefUri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "p":Ljava/lang/String;
    .end local v7    # "comp":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v12, v9

    goto :goto_4

    .end local v9    # "chatId":Ljava/lang/String;
    .restart local v12    # "chatId":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1230
    .restart local v0    # "sessionPrefUri":Lcom/sec/ims/util/ImsUri;
    .restart local v5    # "p":Ljava/lang/String;
    .restart local v7    # "comp":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_3
    move-object/from16 v8, p2

    .line 1236
    .end local v0    # "sessionPrefUri":Lcom/sec/ims/util/ImsUri;
    .end local v5    # "p":Ljava/lang/String;
    .end local v7    # "comp":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    .line 1215
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1218
    :cond_5
    move-object/from16 v3, p1

    move-object/from16 v8, p2

    goto :goto_6

    .line 1215
    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    :goto_2
    move-object/from16 v8, p2

    :goto_3
    move-object v5, v0

    :goto_4
    if-eqz v4, :cond_6

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "chatId":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .end local p1    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local p2    # "preferredUri":Lcom/sec/ims/util/ImsUri;
    :cond_6
    :goto_5
    throw v5

    .line 1217
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "chatId":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .restart local p1    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local p2    # "preferredUri":Lcom/sec/ims/util/ImsUri;
    :cond_7
    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 1238
    :goto_6
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1239
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1243
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v13    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    goto :goto_8

    .line 1240
    :catch_0
    move-exception v0

    goto :goto_7

    .line 1243
    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    goto :goto_9

    .line 1240
    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 1241
    .local v0, "e":Landroid/database/SQLException;
    :goto_7
    :try_start_7
    sget-object v4, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while querying session. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1243
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    :goto_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1244
    nop

    .line 1245
    if-nez v12, :cond_9

    .line 1246
    const/4 v4, 0x0

    return-object v4

    .line 1249
    :cond_9
    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1243
    :catchall_6
    move-exception v0

    :goto_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1244
    throw v0
.end method

.method public querySummaryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 964
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v9, :cond_0

    .line 965
    const/4 v1, 0x0

    return-object v1

    .line 967
    :cond_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 969
    :try_start_0
    const-string/jumbo v2, "summarytable"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 971
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    nop

    :goto_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 976
    goto :goto_1

    .line 975
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 972
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL exception while querying messages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    nop

    .end local v1    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 977
    :goto_1
    return-object v0

    .line 975
    :goto_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 976
    throw v1
.end method

.method public queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "tableindex"    # I
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 1075
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonQueryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "tableindex"    # I
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 1064
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "idString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1066
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v2, "buildMessageCursor: No last segment."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v1, 0x0

    return-object v1

    .line 1069
    :cond_0
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 1070
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonQueryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryTableWithSessionUrl(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "tableindex"    # I
    .param p2, "session_url"    # Ljava/lang/String;

    .line 1124
    const-string/jumbo v6, "session_uri =?"

    .line 1125
    .local v6, "select":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 1126
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryTablewithBufferDbId(IJ)Landroid/database/Cursor;
    .locals 7
    .param p1, "tableindex"    # I
    .param p2, "primarykey"    # J

    .line 1109
    const-string v6, "_bufferdbid=?"

    .line 1110
    .local v6, "select":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 1111
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryTablewithResUrl(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "tableindex"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 1115
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->extractObjIdFromResUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "objId":Ljava/lang/String;
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v8, "res_url GLOB ? AND linenum=?"

    .line 1119
    .local v8, "select":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v1, v6, v2

    .line 1120
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public updateRCSParticipantsTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, "rowsUpdated":I
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 871
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 872
    const/4 v2, 0x0

    return v2

    .line 874
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 876
    :try_start_0
    const-string/jumbo v2, "participant"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 877
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 882
    goto :goto_1

    .line 881
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 878
    :catch_0
    move-exception v2

    .line 879
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying messages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 883
    :goto_1
    return v0

    .line 881
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 882
    throw v2
.end method

.method public updateRCSSessionTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "rowsUpdated":I
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 851
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 852
    const/4 v2, 0x0

    return v2

    .line 854
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 856
    :try_start_0
    const-string/jumbo v2, "session"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 857
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 862
    goto :goto_1

    .line 861
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 858
    :catch_0
    move-exception v2

    .line 859
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying messages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 863
    :goto_1
    return v0

    .line 861
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 862
    throw v2
.end method

.method public updateRCSTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "rowsUpdated":I
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 831
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 832
    const/4 v2, 0x0

    return v2

    .line 834
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 836
    :try_start_0
    const-string/jumbo v2, "rcsimft"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 837
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    nop

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 842
    goto :goto_1

    .line 841
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 838
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQL exception while querying messages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    nop

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 843
    :goto_1
    return v0

    .line 841
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 842
    throw v2
.end method

.method public updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "tableindex"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1006
    .local v0, "tableName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1007
    .local v1, "rowsUpdated":I
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1008
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 1009
    const/4 v3, 0x0

    return v3

    .line 1011
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1013
    :try_start_0
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 1014
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    nop

    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1019
    goto :goto_1

    .line 1018
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1015
    :catch_0
    move-exception v3

    .line 1016
    .local v3, "e":Landroid/database/SQLException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while querying messages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    nop

    .end local v3    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 1020
    :goto_1
    return v1

    .line 1018
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1019
    throw v3
.end method
