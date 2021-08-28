.class Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EucSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory;,
        Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursor;
    }
.end annotation


# static fields
.field private static final CREATE_DIALOG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS DIALOG (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

.field private static final CREATE_EUCR_DATA_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS EUCRDATA ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

.field private static final DB_NAME:Ljava/lang/String; = "eucr.db"

.field private static final DB_VERSION:I = 0x3

.field static final DIALOG_COLUMN_ACCEPT_BUTTON:Ljava/lang/String; = "ACCEPT_BUTTON"

.field static final DIALOG_COLUMN_ACCEPT_BUTTON_INDEX:I = 0x4

.field static final DIALOG_COLUMN_ID:Ljava/lang/String; = "ID"

.field static final DIALOG_COLUMN_ID_INDEX:I = 0x0

.field static final DIALOG_COLUMN_LANGUAGE:Ljava/lang/String; = "LANGUAGE"

.field static final DIALOG_COLUMN_LANGUAGE_INDEX:I = 0x1

.field static final DIALOG_COLUMN_REJECT_BUTTON:Ljava/lang/String; = "REJECT_BUTTON"

.field static final DIALOG_COLUMN_REJECT_BUTTON_INDEX:I = 0x5

.field static final DIALOG_COLUMN_REMOTE_URI:Ljava/lang/String; = "REMOTE_URI"

.field static final DIALOG_COLUMN_REMOTE_URI_INDEX:I = 0x8

.field static final DIALOG_COLUMN_SUBJECT:Ljava/lang/String; = "SUBJECT"

.field static final DIALOG_COLUMN_SUBJECT_INDEX:I = 0x2

.field static final DIALOG_COLUMN_SUBSCRIBER_IDENTITY:Ljava/lang/String; = "SUBSCRIBER_IDENTITY"

.field static final DIALOG_COLUMN_SUBSCRIBER_IDENTITY_INDEX:I = 0x6

.field static final DIALOG_COLUMN_TEXT:Ljava/lang/String; = "TEXT"

.field static final DIALOG_COLUMN_TEXT_INDEX:I = 0x3

.field static final DIALOG_COLUMN_TYPE:Ljava/lang/String; = "TYPE"

.field static final DIALOG_COLUMN_TYPE_INDEX:I = 0x7

.field static final DIALOG_TABLE_NAME:Ljava/lang/String; = "DIALOG"

.field private static final DROP_DIALOG_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS DIALOG;"

.field private static final DROP_EUCR_DATA_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS EUCRDATA;"

.field static final EUCRDATA_COLUMN_EXTERNAL:Ljava/lang/String; = "EXTERNAL"

.field static final EUCRDATA_COLUMN_EXTERNAL_INDEX:I = 0x2

.field static final EUCRDATA_COLUMN_ID:Ljava/lang/String; = "ID"

.field static final EUCRDATA_COLUMN_ID_INDEX:I = 0x0

.field static final EUCRDATA_COLUMN_PIN:Ljava/lang/String; = "PIN"

.field static final EUCRDATA_COLUMN_PIN_INDEX:I = 0x1

.field static final EUCRDATA_COLUMN_REMOTE_URI:Ljava/lang/String; = "REMOTE_URI"

.field static final EUCRDATA_COLUMN_REMOTE_URI_INDEX:I = 0x5

.field static final EUCRDATA_COLUMN_ROWID:Ljava/lang/String; = "ROWID"

.field static final EUCRDATA_COLUMN_STATE:Ljava/lang/String; = "STATE"

.field static final EUCRDATA_COLUMN_STATE_INDEX:I = 0x3

.field static final EUCRDATA_COLUMN_SUBSCRIBER_IDENTITY:Ljava/lang/String; = "SUBSCRIBER_IDENTITY"

.field static final EUCRDATA_COLUMN_SUBSCRIBER_IDENTITY_INDEX:I = 0x9

.field static final EUCRDATA_COLUMN_TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field static final EUCRDATA_COLUMN_TIMEOUT_INDEX:I = 0x7

.field static final EUCRDATA_COLUMN_TIMESTAMP:Ljava/lang/String; = "TIMESTAMP"

.field static final EUCRDATA_COLUMN_TIMESTAMP_INDEX:I = 0x6

.field static final EUCRDATA_COLUMN_TYPE:Ljava/lang/String; = "TYPE"

.field static final EUCRDATA_COLUMN_TYPE_INDEX:I = 0x4

.field static final EUCRDATA_COLUMN_USER_PIN:Ljava/lang/String; = "USER_PIN"

.field static final EUCRDATA_COLUMN_USER_PIN_INDEX:I = 0x8

.field static final EUCRDATA_TABLE_NAME:Ljava/lang/String; = "EUCRDATA"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static sOpenCounter:I

.field private static volatile sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const-string v0, "eucr.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 167
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 38
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 38
    sget v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    return v0
.end method

.method static synthetic access$106()I
    .locals 1

    .line 38
    sget v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 154
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    .line 159
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "threadName":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close(), thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 237
    :try_start_1
    sget v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    .line 238
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reference counter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    if-nez v2, :cond_0

    .line 240
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing database, thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 243
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 232
    .end local v0    # "threadName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 2

    .line 250
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$1;)V

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 222
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 224
    .local v1, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    sget v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    .line 225
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Obtaining database, reference counter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit v0

    return-object v1

    .line 228
    .end local v1    # "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 256
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 260
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "DatabaseHelper onCreate() for eucr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exec SQL:CREATE TABLE IF NOT EXISTS EUCRDATA ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, "CREATE TABLE IF NOT EXISTS EUCRDATA ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exec SQL:CREATE TABLE IF NOT EXISTS DIALOG (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "CREATE TABLE IF NOT EXISTS DIALOG (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 270
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db upgrade: oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "ALTER TABLE DIALOG_new RENAME TO DIALOG;"

    const-string v1, "DROP TABLE IF EXISTS DIALOG;"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 279
    const-string v2, "DIALOG_new"

    .line 280
    .local v2, "DIALOG_TABLE_NEW_NAME":Ljava/lang/String;
    const-string v3, "CREATE TABLE IF NOT EXISTS DIALOG_new ( ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON INTEGER,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY (ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 294
    .local v3, "CREATE_DIALOG_TABLE_COPY":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "exec SQL:CREATE TABLE IF NOT EXISTS DIALOG_new ( ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON INTEGER,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY (ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v4, "CREATE TABLE IF NOT EXISTS DIALOG_new ( ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON INTEGER,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY (ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v4, "INSERT INTO DIALOG_new (ID,LANGUAGE,SUBJECT,TEXT,ACCEPT_BUTTON,REJECT_BUTTON,SUBSCRIBER_IDENTITY,TYPE) SELECT * FROM DIALOG;"

    .line 307
    .local v4, "INSERT_OLD_DIALOG_TABLE_INTO_DIALOG_TABLE_COPY":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "exec SQL:INSERT INTO DIALOG_new (ID,LANGUAGE,SUBJECT,TEXT,ACCEPT_BUTTON,REJECT_BUTTON,SUBSCRIBER_IDENTITY,TYPE) SELECT * FROM DIALOG;"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v5, "INSERT INTO DIALOG_new (ID,LANGUAGE,SUBJECT,TEXT,ACCEPT_BUTTON,REJECT_BUTTON,SUBSCRIBER_IDENTITY,TYPE) SELECT * FROM DIALOG;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v5, "UPDATE DIALOG SET REMOTE_URI = (SELECT REMOTE_URI FROM EUCRDATA WHERE(ID=DIALOG.ID AND TYPE=DIALOG.TYPE AND SUBSCRIBER_IDENTITY=DIALOG.SUBSCRIBER_IDENTITY));"

    .line 325
    .local v5, "UPDATE_TABLE":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "exec SQL:UPDATE DIALOG SET REMOTE_URI = (SELECT REMOTE_URI FROM EUCRDATA WHERE(ID=DIALOG.ID AND TYPE=DIALOG.TYPE AND SUBSCRIBER_IDENTITY=DIALOG.SUBSCRIBER_IDENTITY));"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v6, "UPDATE DIALOG SET REMOTE_URI = (SELECT REMOTE_URI FROM EUCRDATA WHERE(ID=DIALOG.ID AND TYPE=DIALOG.TYPE AND SUBSCRIBER_IDENTITY=DIALOG.SUBSCRIBER_IDENTITY));"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v6, "EUCRDATA_new"

    .line 330
    .local v6, "EUCRDATA_TABLE_NEW_NAME":Ljava/lang/String;
    const-string v7, "CREATE TABLE IF NOT EXISTS EUCRDATA_new ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 347
    .local v7, "CREATE_EUCRDATA_TABLE_COPY":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v9, "exec SQL:CREATE TABLE IF NOT EXISTS EUCRDATA_new ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v8, "CREATE TABLE IF NOT EXISTS EUCRDATA_new ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v8, "INSERT INTO EUCRDATA_new (ID,PIN,EXTERNAL,STATE,TYPE,REMOTE_URI,TIMESTAMP,TIMEOUT,USER_PIN,SUBSCRIBER_IDENTITY) SELECT * FROM EUCRDATA;"

    .line 362
    .local v8, "INSERT_OLD_EUCRDATA_TABLE_INTO_EUCRDATA_TABLE_COPY":Ljava/lang/String;
    sget-object v9, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v10, "exec SQL:INSERT INTO EUCRDATA_new (ID,PIN,EXTERNAL,STATE,TYPE,REMOTE_URI,TIMESTAMP,TIMEOUT,USER_PIN,SUBSCRIBER_IDENTITY) SELECT * FROM EUCRDATA;"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v9, "INSERT INTO EUCRDATA_new (ID,PIN,EXTERNAL,STATE,TYPE,REMOTE_URI,TIMESTAMP,TIMEOUT,USER_PIN,SUBSCRIBER_IDENTITY) SELECT * FROM EUCRDATA;"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v9, "DROP TABLE IF EXISTS EUCRDATA;"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v9, "ALTER TABLE EUCRDATA_new RENAME TO EUCRDATA;"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    const/4 p2, 0x2

    .line 371
    .end local v2    # "DIALOG_TABLE_NEW_NAME":Ljava/lang/String;
    .end local v3    # "CREATE_DIALOG_TABLE_COPY":Ljava/lang/String;
    .end local v4    # "INSERT_OLD_DIALOG_TABLE_INTO_DIALOG_TABLE_COPY":Ljava/lang/String;
    .end local v5    # "UPDATE_TABLE":Ljava/lang/String;
    .end local v6    # "EUCRDATA_TABLE_NEW_NAME":Ljava/lang/String;
    .end local v7    # "CREATE_EUCRDATA_TABLE_COPY":Ljava/lang/String;
    .end local v8    # "INSERT_OLD_EUCRDATA_TABLE_INTO_EUCRDATA_TABLE_COPY":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 375
    const-string v2, "DIALOG_new"

    .line 376
    .restart local v2    # "DIALOG_TABLE_NEW_NAME":Ljava/lang/String;
    const-string v3, "CREATE TABLE IF NOT EXISTS DIALOG_new (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    .line 404
    .restart local v3    # "CREATE_DIALOG_TABLE_COPY":Ljava/lang/String;
    const-string v4, "CREATE TABLE IF NOT EXISTS DIALOG_new (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    const-string v4, "INSERT INTO DIALOG_new SELECT * FROM DIALOG;"

    .line 409
    .restart local v4    # "INSERT_OLD_DIALOG_TABLE_INTO_DIALOG_TABLE_COPY":Ljava/lang/String;
    const-string v5, "INSERT INTO DIALOG_new SELECT * FROM DIALOG;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const/4 p2, 0x3

    .line 416
    .end local v2    # "DIALOG_TABLE_NEW_NAME":Ljava/lang/String;
    .end local v3    # "CREATE_DIALOG_TABLE_COPY":Ljava/lang/String;
    .end local v4    # "INSERT_OLD_DIALOG_TABLE_INTO_DIALOG_TABLE_COPY":Ljava/lang/String;
    :cond_1
    return-void
.end method
