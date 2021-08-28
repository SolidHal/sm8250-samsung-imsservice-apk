.class public Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
.super Ljava/lang/Object;
.source "CmcImsServiceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final RESERVED_P2P_CALLID:I

.field private mCmcReady:Z

.field private mCmcRegHandle:I

.field mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field private mContext:Landroid/content/Context;

.field mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

.field mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mp2pSecSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/volte2/IImsCallSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleImsService"    # Lcom/sec/internal/google/GoogleImsService;
    .param p3, "cc"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;
    .param p4, "volteServiceModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->RESERVED_P2P_CALLID:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    .line 66
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 68
    return-void
.end method

.method private getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I
    .locals 7
    .param p1, "service"    # Lcom/sec/internal/google/ServiceProfile;
    .param p2, "cmcType"    # I

    .line 85
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 87
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 88
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 90
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->isP2pPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    .line 92
    .local v2, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getP2pListSize(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    return v1

    .line 96
    .end local v2    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    return v1

    .line 87
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "registrationList":[Lcom/sec/ims/ImsRegistration;
    :cond_3
    return v1
.end method

.method private setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "callProfile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 104
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBoundSessionInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "oemExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    if-eqz v0, :cond_1

    .line 108
    const-string v1, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v2, -0x1

    .line 110
    .local v2, "boundSessionId":I
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    .end local v2    # "boundSessionId":I
    .local v1, "boundSessionId":I
    sget-object v2, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoundSessionInfo(), boundSessionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-lez v1, :cond_0

    .line 113
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 116
    .end local v1    # "boundSessionId":I
    :cond_0
    const-string v1, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, ""

    .line 118
    .local v2, "dialFrom":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .end local v2    # "dialFrom":Ljava/lang/String;
    .local v1, "dialFrom":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 124
    .end local v1    # "dialFrom":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 126
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public acquireP2pNetwork()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_0

    .line 72
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "MO call by PD. startCmcP2pConnection!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v0

    .line 76
    .local v0, "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->acquireNetwork(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z

    .line 78
    .end local v0    # "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :cond_0
    return-void
.end method

.method public createCallSession(IILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 16
    .param p1, "cmcType"    # I
    .param p2, "serviceId"    # I
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p4, "callProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p5, "service"    # Lcom/sec/internal/google/ServiceProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 206
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCallSession(), cmcType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v5, 0x0

    .line 210
    .local v5, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    :try_start_0
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCmcRegHandle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mCmcReady: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mp2pSecSessionMap size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x12

    const-string v8, "CallRadioTech"

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 213
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/volte2/IImsCallSession;

    .line 214
    .local v9, "session":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {v3, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-interface {v9, v7}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 215
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    .end local v9    # "session":Lcom/sec/ims/volte2/IImsCallSession;
    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-lez v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v9

    .line 218
    .local v0, "existP2pSession":Z
    :goto_1
    iget-boolean v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    if-eqz v10, :cond_2

    .line 219
    iget-object v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v11, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-interface {v10, v4, v11}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v10

    move-object v5, v10

    .line 222
    :cond_2
    iget-object v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v10}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    .line 223
    iget-boolean v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    if-nez v10, :cond_6

    if-nez v0, :cond_6

    if-eq v2, v6, :cond_3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v6, 0x7

    if-eq v2, v6, :cond_3

    const/16 v6, 0x8

    if-ne v2, v6, :cond_6

    .line 228
    :cond_3
    iget-object v6, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v6}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v6, v7, :cond_4

    .line 229
    sget-object v6, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[P2P] create fake p2pSessionManager in PD"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 230
    :cond_4
    iget-object v6, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v6}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v6, v7, :cond_5

    .line 231
    sget-object v6, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[P2P] create fake sessionManager in SD "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v6, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "there is no cmc, startCmcP2pConnection!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v6, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v6}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    .line 234
    invoke-virtual {v6, v9}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v6

    .line 235
    invoke-virtual {v6}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v6

    .line 236
    .local v6, "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    iget-object v7, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v7}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->acquireNetwork(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z

    .line 237
    nop

    .line 242
    .end local v6    # "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :goto_2
    iget-object v6, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/16 v7, 0x3e7

    invoke-virtual {v6, v7}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setReservedId(I)V

    .line 244
    sget-object v6, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v8, "createCallSession, create imsCallSessionImpl for [D2D volte call]"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v6, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v9, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 246
    invoke-virtual {v9}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v10}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v10

    invoke-direct {v6, v11, v8, v9, v10}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V

    .line 247
    .local v6, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    new-instance v8, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    iget-object v9, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v8, v3, v6, v11, v9}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .line 248
    .local v8, "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    invoke-virtual {v6, v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 250
    iget-object v9, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v9, v7, v8}, Lcom/sec/internal/google/GoogleImsService;->setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 251
    return-object v8

    .line 238
    .end local v6    # "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .end local v8    # "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    :cond_5
    sget-object v6, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[P2P] error: please check your P2pSwitchEnabled"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v5    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local p0    # "this":Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .end local p1    # "cmcType":I
    .end local p2    # "serviceId":I
    .end local p3    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local p4    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local p5    # "service":Lcom/sec/internal/google/ServiceProfile;
    throw v6

    .line 255
    .restart local v5    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .restart local p0    # "this":Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .restart local p1    # "cmcType":I
    .restart local p2    # "serviceId":I
    .restart local p3    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .restart local p4    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .restart local p5    # "service":Lcom/sec/internal/google/ServiceProfile;
    :cond_6
    if-nez v5, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    .line 256
    :cond_7
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v5    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local p0    # "this":Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .end local p1    # "cmcType":I
    .end local p2    # "serviceId":I
    .end local p3    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local p4    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local p5    # "service":Lcom/sec/internal/google/ServiceProfile;
    throw v6

    .line 259
    .restart local v5    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .restart local p0    # "this":Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .restart local p1    # "cmcType":I
    .restart local p2    # "serviceId":I
    .restart local p3    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .restart local p4    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .restart local p5    # "service":Lcom/sec/internal/google/ServiceProfile;
    :cond_8
    :goto_3
    const/4 v6, 0x0

    .line 260
    .local v6, "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    const/4 v9, 0x0

    .line 261
    .local v9, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    iget-boolean v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    if-eqz v10, :cond_a

    .line 262
    invoke-virtual {v3, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-interface {v5, v7}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 263
    new-instance v7, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 264
    invoke-virtual {v10}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v10

    iget-object v12, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v12}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v12

    invoke-direct {v7, v5, v8, v10, v12}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V

    .line 265
    .end local v9    # "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .local v7, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    if-eqz v0, :cond_e

    .line 266
    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 267
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v7, v10}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 268
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    goto :goto_4

    :cond_9
    goto :goto_7

    .line 270
    .end local v7    # "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .local v9, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    :cond_a
    if-eqz v0, :cond_d

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, "setMainSession":Z
    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 273
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    if-nez v7, :cond_b

    .line 274
    new-instance v12, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v14, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v15, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 275
    invoke-virtual {v15}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v15

    iget-object v11, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v11}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v11

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V

    move-object v9, v12

    .line 276
    const/4 v7, 0x1

    goto :goto_6

    .line 278
    :cond_b
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v9, v11}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 280
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    :goto_6
    const/4 v11, 0x0

    goto :goto_5

    .line 281
    .end local v7    # "setMainSession":Z
    :cond_c
    move-object v7, v9

    goto :goto_7

    .line 282
    :cond_d
    sget-object v10, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v11, "createCallSession, no need below codes???"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v3, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-interface {v5, v7}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 284
    new-instance v7, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v10, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 285
    invoke-virtual {v10}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v11}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v11

    invoke-direct {v7, v5, v8, v10, v11}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V

    .line 288
    .end local v9    # "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .local v7, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    :cond_e
    :goto_7
    sget-object v8, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v9, "createCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v8, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    iget-object v9, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    const/4 v10, 0x0

    invoke-direct {v8, v3, v7, v10, v9}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    move-object v6, v8

    .line 291
    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v6}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/sec/internal/google/GoogleImsService;->setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 294
    iget-object v8, v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v6}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setReservedId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    return-object v6

    .line 297
    .end local v0    # "existP2pSession":Z
    .end local v6    # "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v7    # "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    :catch_0
    move-exception v0

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createCmcCallSession()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createCmcCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setNeedSubSession(Z)V

    .line 307
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getReservedId()I

    move-result v0

    .line 308
    .local v0, "reservedId":I
    sget-object v2, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reservedId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 310
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sub(wifi-direct) session is already created, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3, v0}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v3

    .line 315
    .local v3, "sessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v4, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setReservedId(I)V

    .line 318
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_2

    .line 319
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    .line 320
    .local v4, "foreSession":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v4, :cond_1

    .line 321
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foreSession.getCmcType(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "pdcall is already connected. don\'t create subcallsession, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 327
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getExtMoCall()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "the call is MOcall. don\'t create subcallsession, just return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 332
    .end local v4    # "foreSession":Lcom/sec/ims/volte2/IImsCallSession;
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v4, v5, :cond_3

    .line 333
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Not support p2p"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 336
    :cond_3
    if-nez v3, :cond_4

    .line 337
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sessionImpl is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 341
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 342
    .local v4, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v5, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v5}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getPhoneId()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 343
    .local v1, "p2pCallProfile":Lcom/sec/ims/volte2/data/CallProfile;
    iget-object v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v6, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 344
    .local v5, "oemExtras":Landroid/os/Bundle;
    if-eqz v5, :cond_6

    .line 345
    const-string v6, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 346
    const/4 v7, -0x1

    .line 347
    .local v7, "boundSessionId":I
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 348
    .end local v7    # "boundSessionId":I
    .local v6, "boundSessionId":I
    sget-object v7, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boundSessionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-lez v6, :cond_5

    .line 350
    invoke-virtual {v1, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 353
    .end local v6    # "boundSessionId":I
    :cond_5
    const-string v6, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 354
    const-string v7, ""

    .line 355
    .local v7, "dialFrom":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .end local v7    # "dialFrom":Ljava/lang/String;
    .local v6, "dialFrom":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 357
    invoke-virtual {v1, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 362
    .end local v6    # "dialFrom":Ljava/lang/String;
    :cond_6
    const/4 v6, -0x1

    .line 363
    .local v6, "p2pRegHandle":I
    iget-object v7, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

    .line 364
    .local v7, "service":Lcom/sec/internal/google/ServiceProfile;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 365
    .local v8, "p2pSecSessionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    iget-object v9, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v9}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v9, v10, :cond_7

    .line 366
    const/4 v9, 0x7

    invoke-direct {p0, v7, v9}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v9

    move v6, v9

    if-eq v9, v2, :cond_8

    .line 367
    sget-object v9, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v10, "create session on WIFI-DIRECT PD"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v10, v1, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    :cond_7
    iget-object v9, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v9}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v9, v10, :cond_8

    .line 371
    const/16 v9, 0x8

    invoke-direct {p0, v7, v9}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v9

    move v6, v9

    if-eq v9, v2, :cond_8

    .line 372
    sget-object v9, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v10, "create session on WIFI-DIRECT SD"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v10, v1, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_8
    :goto_0
    sget-object v9, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "subSecSessionMap size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 379
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/ims/volte2/IImsCallSession;

    .line 380
    .local v11, "session":Lcom/sec/ims/volte2/IImsCallSession;
    const-string v12, "CallRadioTech"

    invoke-virtual {v4, v12}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 381
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    .end local v11    # "session":Lcom/sec/ims/volte2/IImsCallSession;
    goto :goto_1

    .line 383
    :cond_9
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_10

    .line 385
    const/4 v9, 0x0

    .line 386
    .local v9, "existMainSession":Z
    const/4 v10, 0x5

    .line 387
    .local v10, "cmcType":I
    iget-object v11, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v11}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 388
    const/4 v10, 0x7

    .line 390
    :cond_a
    const/4 v11, 0x1

    .local v11, "type":I
    :goto_2
    if-gt v11, v10, :cond_c

    .line 391
    invoke-direct {p0, v7, v11}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v12

    if-eq v12, v2, :cond_b

    .line 392
    const/4 v9, 0x1

    .line 393
    goto :goto_3

    .line 390
    :cond_b
    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    .line 396
    .end local v11    # "type":I
    :cond_c
    :goto_3
    sget-object v2, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "existMainSession: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "setMainSession":Z
    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    move-result-object v11

    .line 400
    .local v11, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 401
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    if-nez v2, :cond_e

    .line 402
    if-nez v9, :cond_d

    .line 403
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v11, v14}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 404
    const/4 v2, 0x1

    goto :goto_5

    .line 406
    :cond_d
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v11, v14}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_5

    .line 409
    :cond_e
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v11, v14}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 411
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    :goto_5
    goto :goto_4

    .line 412
    :cond_f
    sget-object v12, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mSubSessionList size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->initP2pImpl()V

    .line 415
    iget-object v12, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mGoogleImsAdaptor:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v13

    invoke-virtual {v12, v13, v3}, Lcom/sec/internal/google/GoogleImsService;->setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V

    .line 418
    invoke-virtual {v11, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->startP2pSessions(Z)V

    .line 420
    .end local v2    # "setMainSession":Z
    .end local v9    # "existMainSession":Z
    .end local v10    # "cmcType":I
    .end local v11    # "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    :cond_10
    return-void
.end method

.method public getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "session"    # Lcom/sec/ims/volte2/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPendingCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    const-string v1, "com.samsung.telephony.extra.CMC_PHONE_ID"

    const/4 v2, 0x0

    const-string v3, "android.telephony.ims.extra.OEM_EXTRAS"

    const-string v4, "com.samsung.telephony.extra.CMC_TYPE"

    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-eqz v0, :cond_2

    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v0, "extras":Landroid/os/Bundle;
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v6

    .line 429
    .local v6, "cmcType":I
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v7

    .line 430
    .local v7, "sessionId":I
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    invoke-virtual {p0, v6}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result v4

    .line 434
    .local v4, "cmcLineSlotIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 435
    .end local v4    # "cmcLineSlotIndex":I
    .local v2, "cmcLineSlotIndex":I
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    .end local v2    # "cmcLineSlotIndex":I
    :cond_1
    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 438
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v6    # "cmcType":I
    .end local v7    # "sessionId":I
    goto :goto_1

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v6, :cond_4

    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 442
    .restart local v0    # "extras":Landroid/os/Bundle;
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v6

    .line 443
    .restart local v6    # "cmcType":I
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v7

    .line 444
    .restart local v7    # "sessionId":I
    sget-object v8, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set BoundSessionId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-object v8, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "put cmc sessionId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    sget-object v5, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "put cmc type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const/4 v4, 0x7

    if-ne v6, v4, :cond_3

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    :cond_3
    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 456
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v6    # "cmcType":I
    .end local v7    # "sessionId":I
    :cond_4
    :goto_1
    return-void
.end method

.method public isCmcPrimaryType(I)Z
    .locals 2
    .param p1, "cmcType"    # I

    .line 525
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 534
    const/4 v0, 0x0

    return v0

    .line 530
    :cond_0
    return v0
.end method

.method public isCmcSecondaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 550
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isP2pPrimaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 538
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 546
    const/4 v0, 0x0

    return v0

    .line 542
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onIncomingCall(ILandroid/content/Intent;Lcom/sec/internal/google/ServiceProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "fillIn"    # Landroid/content/Intent;
    .param p3, "service"    # Lcom/sec/internal/google/ServiceProfile;
    .param p4, "secCallSession"    # Lcom/sec/ims/volte2/IImsCallSession;

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    const-string v2, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v3, "com.samsung.telephony.extra.CMC_TYPE"

    if-eqz v0, :cond_5

    .line 473
    :try_start_1
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 474
    .local v0, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    .line 475
    .local v4, "cmcType":I
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v5

    .line 477
    .local v5, "sessionId":I
    invoke-virtual {p0, v4}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->isCmcPrimaryType(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 478
    sget-object v6, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "onIncomingCall: overwrite P2P PRIMARY to CMC PRIMARY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v4, 0x1

    .line 482
    :cond_0
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v4}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 486
    const-string v2, "com.samsung.telephony.extra.CMC_DIAL_TO"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    const-string v2, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v2, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 492
    const-string v2, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result v2

    .line 496
    .local v2, "cmcLineSlotIndex":I
    if-ne v2, v1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    move v2, v3

    .line 497
    const-string v3, "com.samsung.telephony.extra.CMC_PHONE_ID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    .end local v0    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v2    # "cmcLineSlotIndex":I
    .end local v4    # "cmcType":I
    .end local v5    # "sessionId":I
    :cond_4
    goto :goto_2

    .line 500
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v4, :cond_6

    .line 502
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    invoke-interface {p4}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 509
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    if-ne v0, v2, :cond_7

    .line 510
    const/4 v0, 0x7

    invoke-direct {p0, p3, v0}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 511
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onIncomingCall: need wifi-direct connection, startCmcP2pConnection!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x1

    .line 513
    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    move-result-object v0

    .line 515
    .local v0, "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->acquireNetwork(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    .end local v0    # "capabilities":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :cond_7
    goto :goto_3

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)I
    .locals 10
    .param p1, "cmcType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "callProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p4, "service"    # Lcom/sec/internal/google/ServiceProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 134
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 137
    const/4 v2, -0x1

    .line 138
    .local v2, "p2pRegHandle":I
    :try_start_0
    invoke-virtual {p4}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v3

    .line 139
    .local v3, "isCmcRegExist":Z
    sget-object v4, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCmcRegExist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 142
    if-ne p1, v1, :cond_5

    .line 143
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result v1

    .line 144
    .local v1, "cmcLineSlotIndex":I
    invoke-virtual {p4}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v5

    .line 145
    .local v5, "phoneId":I
    invoke-direct {p0, p4, p1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v6

    iput v6, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-ne v6, v0, :cond_0

    .line 146
    const-string v6, "CMC PD is not registered."

    .line 147
    .local v6, "errMsg":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 149
    .end local v6    # "errMsg":Ljava/lang/String;
    goto :goto_0

    :cond_0
    if-eq v1, v5, :cond_1

    .line 150
    const-string/jumbo v6, "phoneId and cmcLineSlotIndex are not matched"

    .line 151
    .restart local v6    # "errMsg":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 153
    .end local v6    # "errMsg":Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_1
    sget-object v4, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "create session on CMC-PD"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    const/4 v4, 0x5

    .line 158
    .local v4, "p2pType":I
    iget-object v6, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v6}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    const/4 v4, 0x7

    .line 161
    :cond_2
    const/4 v6, 0x3

    .local v6, "type":I
    :goto_1
    if-gt v6, v4, :cond_4

    .line 162
    invoke-direct {p0, p4, v6}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v7

    move v2, v7

    if-eq v7, v0, :cond_3

    .line 163
    invoke-virtual {p3, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 164
    iget-object v7, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v9, p3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 167
    .end local v1    # "cmcLineSlotIndex":I
    .end local v4    # "p2pType":I
    .end local v5    # "phoneId":I
    .end local v6    # "type":I
    :cond_4
    goto/16 :goto_4

    .line 168
    :cond_5
    const-string v1, "CallPull"

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    const/4 p1, 0x2

    goto :goto_2

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 171
    const/4 p1, 0x2

    .line 173
    :cond_7
    :goto_2
    const/4 v1, 0x2

    invoke-direct {p0, p4, v1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-eq v1, v0, :cond_8

    .line 174
    sget-object v1, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "create session on CMC SD"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 176
    :cond_8
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 180
    :goto_3
    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v4

    move v2, v4

    if-eq v4, v0, :cond_9

    .line 181
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "create session on WIFI-AP SD"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, p3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 185
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 186
    const/16 v1, 0x8

    invoke-direct {p0, p4, v1}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getCmcRegHandle(Lcom/sec/internal/google/ServiceProfile;I)I

    move-result v4

    move v2, v4

    if-eq v4, v0, :cond_b

    .line 187
    sget-object v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "create session on WIFI-DIRECT SD"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, p3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 195
    :cond_a
    iput-boolean v4, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 197
    :cond_b
    :goto_4
    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "p2pRegHandle":I
    .end local v3    # "isCmcRegExist":Z
    goto :goto_5

    .line 198
    :catch_0
    move-exception v0

    .line 200
    :goto_5
    return p1
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    const/4 v0, 0x5

    .line 460
    .local v0, "cmcType":I
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const/4 v0, 0x7

    .line 464
    :cond_0
    const/4 v1, 0x1

    .local v1, "type":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 465
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    .line 464
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 467
    .end local v1    # "type":I
    :cond_1
    return-void
.end method

.method public setServiceProfile(Lcom/sec/internal/google/ServiceProfile;)V
    .locals 0
    .param p1, "service"    # Lcom/sec/internal/google/ServiceProfile;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/google/ServiceProfile;

    .line 82
    return-void
.end method
