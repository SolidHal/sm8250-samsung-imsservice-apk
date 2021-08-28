.class public Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;
.super Ljava/lang/Object;
.source "ExternalSupporter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    .line 19
    const-class v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 23
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 24
    .local v0, "emergencyManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemUtil;->checkUltraPowerSavingMode(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UPSM mode skip package add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "EMERGENCY mode skip package add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_1
    sget-boolean v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->ENG:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->SHIPBUILD:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "package add"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v1, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    const-string v3, "com.hugeland.cdsplus"

    invoke-direct {v2, p1, v3}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    const-string v2, "com.sec.imslogger"

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    .line 35
    sget-object v2, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mImsLogger:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->initialize()V

    .line 58
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;

    .line 42
    .local v1, "p":Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;->send(Ljava/lang/Object;)Z

    .line 43
    .end local v1    # "p":Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
