.class public Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
.super Ljava/lang/Object;
.source "ImsLoggerPlus.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;


# static fields
.field private static final CLS_SERVICE_NAME:Ljava/lang/String; = "com.sec.imslogger.services.IntentServiceForEvents"

.field private static final DM_SERVICE_NAME:Ljava/lang/String; = "com.sec.imslogger.services.ImsDmService"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_PENDING_QUEUE:I = 0xa


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDmBinder:Landroid/os/IBinder;

.field private mIsBound:Z

.field private final mPackageName:Ljava/lang/String;

.field private mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field private final mPendingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    .line 32
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->sendPendingObject()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private addPendingObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPendingObject size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private allowedDmEvent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    sget-boolean v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->SHIPBUILD:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->disconnectService()V

    .line 108
    const/4 v0, 0x0

    return v0

    .line 105
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkBinderAvailable()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private connect()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->connectService()V

    .line 125
    :cond_0
    return-void
.end method

.method private connectService()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v3, "com.sec.imslogger.services.ImsDmService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 130
    return-void
.end method

.method private disconnectService()V
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z

    .line 141
    :cond_0
    return-void
.end method

.method private sendPendingObject()V
    .locals 3

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->send(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "succeed send pending requests"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method private sendViaIntentService(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$ImsLoggerPlus$52daEYh3t1wq-cy5yzyUc32immo;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$ImsLoggerPlus$52daEYh3t1wq-cy5yzyUc32immo;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method private startPackage()V
    .locals 4

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v3, "com.sec.imslogger.services.IntentServiceForEvents"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    const-string v1, "DebugInfoType"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Starting ImsLogger+"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method


# virtual methods
.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 4

    .line 73
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v3, "com.sec.imslogger.services.ImsDmService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 84
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object v1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackageStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-eq v0, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->startPackage()V

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->allowedDmEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->connect()V

    .line 70
    :cond_1
    return-void
.end method

.method public synthetic lambda$sendViaIntentService$0$ImsLoggerPlus(Landroid/content/Intent;)V
    .locals 5
    .param p1, "i"    # Landroid/content/Intent;

    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageName:Ljava/lang/String;

    const-string v3, "com.sec.imslogger.services.IntentServiceForEvents"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 175
    .local v0, "components":[Landroid/content/ComponentName;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 176
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    iget-object v4, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 175
    .end local v3    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "isSent":Z
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->allowedDmEvent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v1, v3, :cond_0

    goto/16 :goto_4

    .line 192
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send() with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v1, v3, :cond_3

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 196
    .local v1, "p":Landroid/os/Parcel;
    const/4 v3, 0x1

    .line 197
    .local v3, "code":I
    const/4 v4, 0x0

    :try_start_0
    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 198
    const/4 v3, 0x0

    .line 201
    :cond_1
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 202
    iget-object v5, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    if-eqz v5, :cond_2

    .line 203
    iget-object v5, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    invoke-interface {v5, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "code":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 206
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 208
    iput-object v4, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mDmBinder:Landroid/os/IBinder;

    .line 209
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mIsBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    nop

    .line 213
    .end local v1    # "p":Landroid/os/Parcel;
    goto/16 :goto_3

    .line 211
    .restart local v1    # "p":Landroid/os/Parcel;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw v2

    .line 213
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v1, v2, :cond_4

    .line 214
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding request to PendingQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->addPendingObject(Ljava/lang/Object;)V

    .line 216
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->connect()V

    goto/16 :goto_3

    .line 218
    :cond_4
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->sendViaIntentService(Landroid/content/Intent;)V

    goto :goto_2

    .line 221
    :cond_5
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 222
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "notifyType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 223
    .local v2, "notifyType":I
    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-ne v2, v3, :cond_7

    .line 224
    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v4, "i":Landroid/content/Intent;
    const-string v5, "DebugInfoType"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v3, "msgType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "SipType"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v3, "direction"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "Direction"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timestamp"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v3, "localIp"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "LocalAddr"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v3, "remoteIp"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RemoteAddr"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v3, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "SipMsg"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->sendViaIntentService(Landroid/content/Intent;)V

    .line 236
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "notifyType":I
    .end local v4    # "i":Landroid/content/Intent;
    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 238
    :goto_3
    return v0

    .line 189
    :cond_8
    :goto_4
    return v2
.end method
