.class public Lcom/sec/internal/google/ImsNotifier;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/IImsNotifier;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsNotifier"


# instance fields
.field private mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

.field private final mRegistrationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;)V
    .locals 1
    .param p1, "googleImsService"    # Lcom/sec/internal/google/GoogleImsService;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsNotifier;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    return-object v0
.end method

.method private notifyRegistrationCallback(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 8
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;

    .line 94
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 95
    .local v0, "registrationCallback":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/telephony/ims/aidl/IImsRegistrationCallback;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "callback":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 99
    .local v2, "callbackSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 101
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-object v1, v4

    .line 103
    if-eqz v1, :cond_1

    .line 104
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(I)V

    .line 106
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v4, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    invoke-interface {v1, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_1

    .line 110
    :cond_0
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v5

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result v6

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 111
    .local v4, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-interface {v1, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 112
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/net/Uri;

    invoke-interface {v1, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v4    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    :goto_1
    goto :goto_2

    .line 115
    :catch_0
    move-exception v4

    .line 99
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 121
    .end local v2    # "callbackSize":I
    :cond_3
    return-void
.end method

.method private notifyRegistrationListener(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 7
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;

    .line 124
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 125
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 126
    .local v2, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/google/ServiceProfile;

    .line 127
    .local v3, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual {v3}, Lcom/sec/internal/google/ServiceProfile;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v4

    .line 128
    .local v4, "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {v3}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 129
    goto :goto_0

    .line 133
    :cond_0
    if-eqz p2, :cond_1

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V

    .line 136
    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v5, v0, p1}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, v5, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_1

    .line 140
    :cond_1
    nop

    .line 141
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 142
    .local v5, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-interface {v4, v5}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 143
    const/4 v6, 0x0

    new-array v6, v6, [Landroid/net/Uri;

    invoke-interface {v4, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v5    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2
    :goto_1
    goto :goto_2

    .line 145
    :catch_0
    move-exception v5

    .line 147
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v4    # "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    :goto_2
    goto :goto_0

    .line 148
    :cond_3
    return-void
.end method


# virtual methods
.method public addCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 49
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 50
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 52
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(I)V

    .line 56
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v4, p1, v3}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v4, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    invoke-interface {p2, v4}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    goto :goto_1

    .line 59
    :catch_0
    move-exception v4

    .line 51
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 71
    return-void
.end method

.method public notifyFeatureCapableChanged(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureCapableChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNotifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 228
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ServiceProfile;

    .line 229
    .local v2, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 230
    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v3

    .line 235
    .local v3, "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v6, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v6, v6, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 236
    :catch_0
    move-exception v4

    .line 238
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v3    # "listener":Lcom/android/ims/internal/IImsRegistrationListener;
    :goto_1
    goto :goto_0

    .line 239
    :cond_2
    return-void
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 1
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;

    .line 87
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/ImsNotifier;->notifyRegistrationCallback(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/google/ImsNotifier;->notifyRegistrationListener(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onCdpnInfo(ILjava/lang/String;I)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "calledPartyNumber"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 205
    const-string v0, "[^+?0-9]+"

    const-string v1, " "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v0, v0, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/ISecImsMmTelEventListener;

    invoke-interface {v0, p2, p3}, Lcom/android/ims/internal/ISecImsMmTelEventListener;->onCdpnInfo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    :goto_0
    return-void
.end method

.method public onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 4
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;

    .line 214
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getCmcTypeFromRegHandle(I)I

    move-result v0

    .line 216
    .local v0, "deCmcType":I
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->setDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    .line 218
    :try_start_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v1}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->getImsExternalCallStateListener()Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v1

    .line 219
    .local v1, "listener":Lcom/android/ims/internal/IImsExternalCallStateListener;
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v2}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->getExternalCallStateList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "listener":Lcom/android/ims/internal/IImsExternalCallStateListener;
    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 223
    .end local v0    # "deCmcType":I
    :cond_0
    :goto_0
    return-void
.end method

.method public onIncomingCall(II)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "callId"    # I

    .line 152
    const-string v0, "net.sip.vzthirdpartyapi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 157
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ServiceProfile;

    .line 158
    .local v2, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 159
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v3, "fillIn":Landroid/content/Intent;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:imsCallID"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v4, "android:imsServiceId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 164
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v4, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    .line 165
    .local v4, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v4, :cond_3

    .line 166
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 167
    .local v5, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 168
    const-string v6, "com.samsung.telephony.extra.SEM_EXTRA_FORWARDED_CALL"

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_1
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    .line 172
    const-string v6, "android:ussd"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v6}, Lcom/sec/internal/google/GoogleImsService;->getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v2, v4}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->onIncomingCall(ILandroid/content/Intent;Lcom/sec/internal/google/ServiceProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v4    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v5    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_3
    goto :goto_1

    .line 177
    :catch_0
    move-exception v4

    .line 178
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 182
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v4, v4, Lcom/sec/internal/google/GoogleImsService;->mSecMmtelListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/ISecImsMmTelEventListener;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/android/ims/internal/ISecImsMmTelEventListener;->onIncomingCall(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    goto :goto_2

    .line 183
    :catch_1
    move-exception v4

    .line 184
    .local v4, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v3    # "fillIn":Landroid/content/Intent;
    .end local v4    # "ignored":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 188
    :cond_5
    return-void
.end method

.method public onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result v0

    .line 193
    .local v0, "callId":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v1, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    .line 194
    .local v1, "secPendingSession":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/google/ImsNotifier;->onIncomingCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 2
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;

    .line 258
    const-string v0, "ImsNotifier"

    const-string v1, "onP2pPushCallEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/ImsNotifier$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/google/ImsNotifier$2;-><init>(Lcom/sec/internal/google/ImsNotifier;Lcom/sec/ims/DialogEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public onP2pRegCompleteEvent()V
    .locals 2

    .line 243
    const-string v0, "ImsNotifier"

    const-string v1, "onP2pRegCompleteEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/ImsNotifier$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/ImsNotifier$1;-><init>(Lcom/sec/internal/google/ImsNotifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public removeCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mRegistrationCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 77
    :cond_0
    return-void
.end method
