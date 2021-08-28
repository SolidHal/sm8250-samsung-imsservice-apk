.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PLANIINTIME_PREF:Ljava/lang/String; = "PLANIINTIME"

.field protected static final PLANI_PREF:Ljava/lang/String; = "PLANI"


# instance fields
.field private isSoftPhone:Z

.field private mContext:Landroid/content/Context;

.field protected mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

.field protected mLastPaniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected mPrevLastPaniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdnController"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 78
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 80
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "imsconfig"

    const-string v5, "PLANI"

    invoke-static {v0, v2, v4, v5, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTac(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getNrCid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLac(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 56
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 56
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getWifiBssid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLac(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "lac":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellLocation(IZ)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 493
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_1

    .line 494
    move-object v2, v1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 495
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 496
    .end local v2    # "location":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_0

    .line 497
    move-object v3, v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 499
    .local v3, "location":Landroid/telephony/cdma/CdmaCellLocation;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLteTac"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    .local v4, "getLTETac":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 504
    goto :goto_0

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "getLTETac":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 505
    :catch_1
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 509
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "location":Landroid/telephony/cdma/CdmaCellLocation;
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    return v0
.end method

.method private getNrCid(I)J
    .locals 8
    .param p1, "phoneId"    # I

    .line 537
    const-wide/16 v0, 0x0

    .line 538
    .local v0, "nrCid":J
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellLocation(IZ)Landroid/telephony/CellLocation;

    move-result-object v2

    .line 539
    .local v2, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v4, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_1

    .line 540
    move-object v4, v2

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 542
    .local v4, "location":Landroid/telephony/gsm/GsmCellLocation;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getNrCid"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    .local v5, "getNrCid":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v0, v6

    .line 547
    goto :goto_0

    .line 545
    :catch_0
    move-exception v3

    .line 546
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 550
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "getNrCid":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 548
    :catch_1
    move-exception v3

    .line 549
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 551
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "location":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_1
    goto :goto_2

    :cond_1
    instance-of v3, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_0

    .line 552
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getNrCid(),  CdmaCellloaction..."

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_2
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNrCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 555
    return-wide v0
.end method

.method private getPrevioutPlani(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .local v0, "prevPlani":Ljava/lang/String;
    return-object v0

    .line 765
    .end local v0    # "prevPlani":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, ""

    return-object v1
.end method

.method private getStoredLastPani(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .local v0, "lastPani":Ljava/lang/String;
    return-object v0

    .line 774
    .end local v0    # "lastPani":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, ""

    return-object v1
.end method

.method private getTac(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "tac":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellLocation(IZ)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 570
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_0

    .line 572
    move-object v2, v1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    goto :goto_1

    .line 573
    :cond_0
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_1

    .line 574
    move-object v3, v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 576
    .local v3, "location":Landroid/telephony/cdma/CdmaCellLocation;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLteTac"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    .local v4, "getLTETac":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 579
    .local v2, "retVal":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v5

    .line 582
    .end local v2    # "retVal":Ljava/lang/Integer;
    goto :goto_0

    .line 580
    :catch_0
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 585
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "getLTETac":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 583
    :catch_1
    move-exception v2

    .line 584
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 587
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "location":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 588
    return v0
.end method

.method private getWifiBssid()Ljava/lang/String;
    .locals 6

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 749
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 750
    .local v1, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 752
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 754
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiManager.getBSSID(): ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    return-object v1
.end method

.method private setPrevioutPlani(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "pani"    # Ljava/lang/String;

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPrevioutPlani: IndexOutOfBoundsException"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 785
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    return-void
.end method

.method private storeLastPani(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "pani"    # Ljava/lang/String;

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "storeLastPani: IndexOutOfBoundsException"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 793
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    return-void
.end method


# virtual methods
.method public generate(ILjava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "pdn"    # I
    .param p2, "fallbackPlmn"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 91
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 92
    .local v0, "subId":I
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate: subId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 100
    .local v1, "network":I
    const/16 v2, 0x12

    const/16 v3, 0xf

    if-ne p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {v3, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 108
    :cond_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    sget v3, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 110
    invoke-interface {v3, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v2, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 113
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    goto :goto_1

    .line 111
    :cond_3
    :goto_0
    const/16 v1, 0x12

    .line 116
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 117
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v3, "network is unknown."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v2, 0x0

    return-object v2

    .line 121
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCid(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "cid":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellLocation(IZ)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 516
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_1

    .line 517
    move-object v2, v1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 518
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 519
    .end local v2    # "location":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_0

    .line 520
    move-object v3, v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 522
    .local v3, "location":Landroid/telephony/cdma/CdmaCellLocation;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLteCellId"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 524
    .local v4, "getLteCellId":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 527
    goto :goto_0

    .line 525
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "getLteCellId":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 528
    :catch_1
    move-exception v2

    .line 529
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 532
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "location":Landroid/telephony/cdma/CdmaCellLocation;
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 533
    return v0
.end method

.method public getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "currentTime"    # Ljava/util/Date;

    .line 667
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "imsconfig"

    const-string v3, "PLANI"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "sp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    return-object v0

    .line 672
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 675
    .end local v0    # "sp":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "plani":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    .line 683
    .local v1, "needTimeStamp":Z
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    .line 684
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 685
    .local v2, "subId":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 686
    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 687
    const-string v3, ";\"\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}.*$"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    const/4 v1, 0x0

    .line 692
    .end local v2    # "subId":I
    :cond_2
    if-eqz v1, :cond_5

    .line 694
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 695
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 696
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_3

    .line 697
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_0

    .line 698
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    .line 699
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    .line 701
    :cond_4
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 702
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastPani: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 706
    return-object v0
.end method

.method public getTimeInPlani(I)J
    .locals 6
    .param p1, "phoneId"    # I

    .line 476
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    const-wide/16 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getLong(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 477
    .local v0, "time":J
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeInPlani: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 478
    return-wide v0
.end method

.method public isChangedPlani(ILjava/lang/String;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "plani"    # Ljava/lang/String;

    .line 454
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "prevPlani":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangedPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curr plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 456
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const/4 v1, 0x0

    return v1

    .line 459
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    .line 460
    const/4 v1, 0x1

    return v1
.end method

.method protected isValidPani(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "pani"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 711
    return v1

    .line 719
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 720
    .local v0, "subId":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .line 721
    .local v2, "network":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v3

    .line 722
    .local v3, "voiceSvcState":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v4, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result v4

    .line 724
    .local v4, "dataSvcState":I
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isValidPani: PANI ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] network ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] voiceSvcState ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] dataSvcState ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 727
    const-string v5, "IEEE-802.11"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 731
    const/16 v5, 0x12

    if-ne v2, v5, :cond_1

    if-nez v3, :cond_2

    :cond_1
    if-eq v2, v5, :cond_3

    if-eqz v4, :cond_3

    .line 733
    :cond_2
    return v1

    .line 735
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 738
    :cond_4
    if-eqz v3, :cond_5

    .line 739
    return v1

    .line 742
    :cond_5
    const-string v1, "i-wlan-node-id="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 482
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cellular-Network-Info_With_CIA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 486
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cellular-Network-Info_With_CIA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0
.end method

.method protected queryCellInfoForQualcomm()V
    .locals 3

    .line 559
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryCellInfoForQualcomm"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 562
    .local v0, "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v0, :cond_0

    .line 563
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cellInfo is null."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void
.end method

.method public removePreviousPlani(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 465
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "prevPlani":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreviousPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    .line 468
    return-void
.end method

.method public setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "pani"    # Ljava/lang/String;
    .param p3, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p4, "currentTime"    # Ljava/util/Date;

    .line 610
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "lastPaniHeader":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLkcForLastPani: No Last PANI header for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void

    .line 616
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLkcForLastPani: current PANI is not valid!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 622
    :cond_1
    const-string v1, "IEEE-802.11"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 626
    .local v1, "voiceRatType":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "underlyingCellularPani":Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 629
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "setLkcForLastPani: underlyingCellularPani is not valid!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void

    .line 632
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 635
    .end local v1    # "voiceRatType":I
    .end local v2    # "underlyingCellularPani":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "storedPani":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 638
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 639
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 640
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    .line 641
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_1

    .line 642
    :cond_4
    sget-object v4, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_5

    .line 643
    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    .line 645
    :cond_5
    :goto_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 646
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 650
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string v3, "imsconfig"

    const-string v4, "PLANI"

    invoke-static {p1, v2, v3, v4, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLkcForLastPani: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 653
    return-void
.end method

.method public setTimeInPlani(IJ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "time"    # J

    .line 471
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    move v0, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 472
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTimeInPlani: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 473
    return-void
.end method
