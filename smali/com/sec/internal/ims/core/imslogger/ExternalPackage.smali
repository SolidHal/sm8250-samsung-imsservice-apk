.class public Lcom/sec/internal/ims/core/imslogger/ExternalPackage;
.super Ljava/lang/Object;
.source "ExternalPackage.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 29
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->registerPackageAction()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/imslogger/ExternalPackage;
    .param p1, "x1"    # Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 17
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isAllow()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerPackageAction()V
    .locals 3

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    return-void
.end method


# virtual methods
.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 4

    .line 34
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 37
    .local v0, "status":Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 39
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 40
    .local v2, "componentState":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 41
    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-object v0, v3

    goto :goto_0

    .line 43
    :cond_0
    sget-object v3, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 47
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "componentState":I
    :goto_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 49
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageStatus(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v0
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notifyType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.imsservice.sip.signalling"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.imsservice.sip.signalling.READ_PERMISSION"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 91
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
