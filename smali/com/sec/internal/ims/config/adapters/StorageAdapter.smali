.class public Lcom/sec/internal/ims/config/adapters/StorageAdapter;
.super Ljava/lang/Object;
.source "StorageAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;,
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;,
        Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final STATE_DEFAULT:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_READY:I = 0x1

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mDBTableMax:I

.field private mIdentity:Ljava/lang/String;

.field private mPhoneId:I

.field private mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

.field private mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mPhoneId:I

    .line 55
    sget-object v1, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Init StorageAdapter"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    .line 40
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mPhoneId:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/config/adapters/StorageAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mPhoneId:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mIdentity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;
    .param p1, "x1"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mSQLite:Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/config/adapters/StorageAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    .line 40
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;)Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter;
    .param p1, "x1"    # Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 130
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->close()V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->delete(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteAll()Z
    .locals 2

    .line 123
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->deleteAll()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceDeleteALL(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;-><init>(Lcom/sec/internal/ims/config/adapters/StorageAdapter;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$SQLiteAdapter;->forceDeleteAllConfig()Z

    .line 60
    return-void
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 2

    .line 74
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->getState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 81
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->query([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readAll(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDBTableMax(I)V
    .locals 0
    .param p1, "tableMax"    # I

    .line 69
    iput p1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mDBTableMax:I

    .line 70
    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeAll(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 109
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;->mState:Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/config/adapters/StorageAdapter$State;->writeAll(Ljava/util/Map;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
