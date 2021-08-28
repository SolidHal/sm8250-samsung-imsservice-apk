.class public Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagingAppInfoReceiver.java"


# static fields
.field private static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field private static final DATA_SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field private static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsRegistered:Z

.field private final mListener:Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mListener:Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

    .line 32
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_PACKAGE_NAME:Ljava/lang/String;

    .line 33
    const-string v2, "com.samsung.android.messaging"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public getMessagingAppVersion()Ljava/lang/String;
    .locals 4

    .line 64
    const-string v0, ""

    .line 66
    .local v0, "version":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 67
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 68
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 69
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 73
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getMessagingAppVersion(): Cannot find the package."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessagingAppVersion(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): intent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mListener:Lcom/sec/internal/ims/util/IMessagingAppInfoListener;

    invoke-interface {v0}, Lcom/sec/internal/ims/util/IMessagingAppInfoListener;->onMessagingAppPackageReplaced()V

    .line 44
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 47
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerReceiver(): IsRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", PackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    .line 53
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 3

    .line 56
    sget-object v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterReceiver(): IsRegistered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mIsRegistered:Z

    .line 61
    :cond_0
    return-void
.end method
