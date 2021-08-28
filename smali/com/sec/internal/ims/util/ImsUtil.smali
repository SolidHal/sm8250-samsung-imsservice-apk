.class public Lcom/sec/internal/ims/util/ImsUtil;
.super Ljava/lang/Object;
.source "ImsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;
    }
.end annotation


# static fields
.field public static final IPME_STATUS:Ljava/lang/String; = "ipme_status"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/sec/internal/ims/util/ImsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandle(J)I
    .locals 1
    .param p0, "handle"    # J

    .line 135
    long-to-int v0, p0

    return v0
.end method

.method public static getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "phoneId"    # I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "simslot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicId(I)Ljava/lang/String;
    .locals 7
    .param p0, "phoneId"    # I

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "impu":Ljava/lang/String;
    const/4 v1, 0x0

    .line 320
    .local v1, "impuUri":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v2

    if-nez v2, :cond_0

    .line 321
    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getImModule: getInstance is null"

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    return-object v2

    .line 324
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v2

    .line 325
    .local v2, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 328
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_1

    .line 331
    sget-object v4, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPublicId: registered IMPU="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-static {v4, p0, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 337
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    .line 338
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v4, :cond_2

    .line 340
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpuFromIsim(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 344
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    const-string v0, ""

    .line 350
    sget-object v5, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "There is no impu"

    invoke-static {v5, p0, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    :cond_3
    return-object v0
.end method

.method public static hideInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "end"    # I

    .line 252
    const-string v0, "none"

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    :cond_0
    return-object v0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "hideInfo had OutOfBoundeEception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v0
.end method

.method public static isCdmalessEnabled(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 60
    invoke-static {p0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(IZ)Z

    move-result v0

    return v0
.end method

.method public static isCdmalessEnabled(IZ)Z
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "isSimMobility"    # Z

    .line 64
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 65
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    .line 66
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isCdmalessEnabled, SIM not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel()Z

    move-result v1

    return v1

    .line 69
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_3

    .line 70
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessModel()Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->isVzwInboundWithCdmaLess(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 69
    :goto_1
    return v1
.end method

.method static isCdmalessModel()Z
    .locals 2

    .line 56
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CDMALESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 6
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 106
    .local p0, "registeredService":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, "mask":[Ljava/lang/String;
    const-string/jumbo v1, "volte"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    const-string/jumbo v1, "rcs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "chat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 119
    .local v4, "service":Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    const/4 v1, 0x1

    return v1

    .line 118
    .end local v4    # "service":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_3
    return v2

    .line 114
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid service type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v2
.end method

.method public static isPermanentPdnFailureReason(Ljava/lang/String;)Z
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;

    .line 357
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil$1;->$SwitchMap$com$sec$internal$ims$util$ImsUtil$PdnFailReason:[I

    invoke-static {p0}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/ImsUtil$PdnFailReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 365
    const/4 v0, 0x0

    return v0

    .line 363
    :cond_0
    return v1
.end method

.method public static isPttSupported()Z
    .locals 4

    .line 244
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->SUPPORT_PTT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 246
    .local v0, "supported":Z
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPttSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v0
.end method

.method public static isRttModeOnFromCallSettings(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 40
    const-string/jumbo v0, "preferred_rtt_mode"

    .line 41
    .local v0, "rttSettingDb":Ljava/lang/String;
    const/4 v1, 0x0

    .line 45
    .local v1, "isEnabled":I
    if-lez p1, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 49
    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public static isSimMobilityActivated(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 102
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v0

    return v0
.end method

.method public static isVzwInboundWithCdmaLess(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z
    .locals 7
    .param p0, "simMno"    # Lcom/sec/internal/constants/Mno;
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_4

    .line 86
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "salesCode":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getAllSalesCodes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 88
    .local v5, "mvno":Ljava/lang/String;
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    return v1

    .line 87
    .end local v5    # "mvno":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const-string v2, "VZW_US:TFN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 94
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_4
    return v1
.end method

.method public static listToDumpFormat(IILjava/lang/String;)V
    .locals 2
    .param p0, "MainSub"    # I
    .param p1, "phoneId"    # I
    .param p2, "chatId"    # Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V

    .line 278
    return-void
.end method

.method public static listToDumpFormat(IILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p0, "MainSub"    # I
    .param p1, "phoneId"    # I
    .param p2, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/sec/internal/ims/util/ImsUtil;->hideInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 268
    const-string v0, ","

    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "StrCommaSeparated":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "StrCommaSeparated":Ljava/lang/String;
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "listToDumpFormat has an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static updateEmergencyCallDomain(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "emergencyProfile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p4, "eDomain"    # Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEmergencyCallDomain:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    if-nez p3, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergencyCallDomain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "isPsDomainInSettings":Z
    const-string v1, "PS"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "IMS"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    :cond_1
    const/4 v0, 0x1

    .line 159
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emergencyCallDomain: isPsDomainInSettings-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", SIM absent-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "isPsTargetDomain":Z
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    const-string/jumbo v4, "originalEmergencyCallDomain"

    const-string v5, "globalsettings"

    if-nez v3, :cond_6

    .line 162
    invoke-static {p1, p0, v5, v4, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "simEDomain":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    :cond_4
    const-string v3, "PS"

    .line 168
    :cond_5
    sget-object v4, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emergencyCallDomain: targetDomain from globalsetting-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 171
    .end local v3    # "simEDomain":Ljava/lang/String;
    goto :goto_0

    .line 172
    :cond_6
    invoke-static {p1, p3, p2, v2}, Lcom/sec/internal/ims/util/ImsUtil;->updateEmergencyCallDomainForNoSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/ims/settings/ImsProfile;Z)Z

    move-result v2

    .line 173
    const-string v3, ""

    invoke-static {p1, p0, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 174
    invoke-static {p1, p0, v5, v4, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_7
    :goto_0
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 179
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v4

    const-string v5, "CS"

    if-nez v4, :cond_9

    if-ne v0, v2, :cond_9

    .line 180
    sget-object v4, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emergencyCallDomain: already "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, v5

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 186
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 187
    const/4 v2, 0x1

    goto :goto_3

    .line 188
    :cond_a
    if-eqz v2, :cond_c

    .line 190
    if-eqz p2, :cond_b

    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    .line 191
    .local v4, "hasEmergencyProfile":Z
    :goto_2
    sget-object v6, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasEmergencyProfile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    if-nez v4, :cond_c

    .line 193
    sget-object v1, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    const-string v5, "emergencyCallDomain: no E911 profile keep e-domain as CS"

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    return-void

    .line 200
    .end local v4    # "hasEmergencyProfile":Z
    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move-object v1, v5

    .line 201
    .local v1, "targetDomain":Ljava/lang/String;
    :goto_4
    sget-object v4, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update emergency Domain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v4, "domain":Landroid/content/ContentValues;
    const-string v5, "emergency_domain_setting"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v5, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v5

    .line 205
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method private static updateEmergencyCallDomainForNoSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/ims/settings/ImsProfile;Z)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p2, "emergencyProfile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p3, "isPsTargetDomain"    # Z

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "supportNoSimPsE911":Z
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 214
    .local v1, "salesCodeMno":Lcom/sec/internal/constants/Mno;
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 215
    .local v2, "simMno":Lcom/sec/internal/constants/Mno;
    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    const-string v3, "no_sim_emergency_domain_setting"

    const-string v4, "CS"

    invoke-static {p0, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "noSimEcallDomain":Ljava/lang/String;
    const-string v4, "PS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    const/4 v0, 0x1

    .line 220
    .end local v3    # "noSimEcallDomain":Ljava/lang/String;
    :cond_2
    nop

    .line 223
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportNoSimPsE911: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", simMno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", salesCodeMno: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v3, p0, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    if-eqz v0, :cond_3

    .line 227
    const/4 p3, 0x1

    .line 229
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    const/4 p3, 0x1

    .line 232
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isDCMOmcCode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    const/4 p3, 0x1

    .line 235
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 236
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_7

    .line 237
    const/4 p3, 0x1

    .line 240
    :cond_7
    return p3
.end method

.method public static updateSsDomain(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "ssDomain"    # Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/sec/internal/ims/util/ImsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update SS domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v0, "domain":Landroid/content/ContentValues;
    const-string/jumbo v1, "ss_domain_setting"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCapabilities(I)V

    .line 145
    return-void
.end method
