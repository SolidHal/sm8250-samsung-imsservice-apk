.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;
.super Landroid/os/Handler;
.source "CapabilityForIncall.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityForIncall"

.field public static final NAME:Ljava/lang/String;


# instance fields
.field protected mActiveCallLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field protected mIsNeedUpdateCallState:Z

.field private mRcsProfile:Ljava/lang/String;

.field mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 1
    .param p1, "capexServiceModule"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "capabilityUtil"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRcsProfile:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 53
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 54
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 55
    return-void
.end method

.method private checkConnectedCalls(Ljava/util/concurrent/CopyOnWriteArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)I"
        }
    .end annotation

    .line 120
    .local p1, "calls":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "nConnectedCalls":I
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 122
    .local v2, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 125
    .end local v2    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    return v0
.end method

.method private checkPrevConnectedCalls(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)I"
        }
    .end annotation

    .line 130
    .local p1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "nPrevConnectedCalls":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 132
    .local v2, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 135
    .end local v2    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    return v0
.end method

.method private getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .locals 3
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;"
        }
    .end annotation

    .line 186
    .local p1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 187
    .local v1, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    return-object v1

    .line 190
    .end local v1    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private setActiveCalls(I)Ljava/util/List;
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 144
    :cond_0
    return-object v0
.end method

.method private setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "callNumber"    # Ljava/lang/String;
    .param p3, "features"    # J
    .param p5, "extFeature"    # Ljava/lang/String;
    .param p6, "activeCsh"    # Z

    .line 195
    const-string v0, "CapabilityForIncall"

    const-string v1, "SetIncallFeature"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    if-eqz p6, :cond_0

    .line 197
    const-string v2, "Activate content share features."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-object v3, p2

    move-wide v4, p3

    move v6, p1

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    goto :goto_0

    .line 203
    :cond_0
    const-string v2, "Deactivate content share features."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v0, v0

    int-to-long v4, v0

    and-long/2addr v4, p3

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int v0, v0

    int-to-long v6, v0

    and-long/2addr v4, v6

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v6, v6

    and-long/2addr v4, v6

    sget-wide v6, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v6, v6

    and-long v5, v4, v6

    move-object v4, p2

    move v7, p1

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    .line 212
    :goto_0
    return-void
.end method


# virtual methods
.method public exchangeCapabilitiesForVSH(IZLjava/util/Map;)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p3, "imsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v1, 0x0

    .line 216
    .local v1, "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    const/4 v2, 0x0

    .line 217
    .local v2, "nPrevConnectedCalls":I
    const-string v3, ""

    .line 219
    .local v3, "extFeature":Ljava/lang/String;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v4, :cond_9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 224
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v9

    .line 225
    .local v9, "networkType":I
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 226
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v6

    .line 225
    const/4 v10, 0x0

    invoke-interface {v4, v5, v6, v10, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v11

    .line 227
    .local v11, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v12

    .line 228
    .local v12, "ownCap":Lcom/sec/ims/options/Capabilities;
    if-nez v12, :cond_1

    .line 229
    return-void

    .line 231
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v11, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v13

    .line 233
    .local v13, "features":J
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    invoke-virtual {v12}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_0

    .line 233
    :cond_2
    move-object v15, v3

    .line 237
    .end local v3    # "extFeature":Ljava/lang/String;
    .local v15, "extFeature":Ljava/lang/String;
    :goto_0
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 238
    iput-boolean v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    .line 241
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v3, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/util/List;

    move-object v10, v3

    goto :goto_1

    .line 242
    :cond_4
    move-object v10, v3

    .line 245
    .end local v3    # "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    .local v10, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v16, v1

    move v6, v2

    .end local v1    # "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v2    # "nPrevConnectedCalls":I
    .local v6, "nPrevConnectedCalls":I
    .local v16, "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 246
    .local v1, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    move-object v2, v1

    .line 248
    .end local v16    # "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .local v2, "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    .line 250
    .end local v1    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v2    # "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v16    # "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_5
    goto :goto_2

    .line 252
    :cond_6
    if-eq v6, v4, :cond_7

    .line 253
    return-void

    .line 256
    :cond_7
    if-eqz p2, :cond_8

    .line 257
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface/range {v16 .. v16}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-wide v3, v13

    move/from16 v5, p1

    move/from16 v17, v6

    .end local v6    # "nPrevConnectedCalls":I
    .local v17, "nPrevConnectedCalls":I
    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_3

    .line 259
    .end local v17    # "nPrevConnectedCalls":I
    .restart local v6    # "nPrevConnectedCalls":I
    :cond_8
    move/from16 v17, v6

    .end local v6    # "nPrevConnectedCalls":I
    .restart local v17    # "nPrevConnectedCalls":I
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface/range {v16 .. v16}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int v3, v3

    int-to-long v3, v3

    and-long/2addr v3, v13

    move/from16 v5, p1

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V

    .line 261
    :goto_3
    return-void

    .line 220
    .end local v9    # "networkType":I
    .end local v10    # "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    .end local v11    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "ownCap":Lcom/sec/ims/options/Capabilities;
    .end local v13    # "features":J
    .end local v15    # "extFeature":Ljava/lang/String;
    .end local v16    # "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v17    # "nPrevConnectedCalls":I
    .local v1, "activeCall":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .local v2, "nPrevConnectedCalls":I
    .local v3, "extFeature":Ljava/lang/String;
    :cond_9
    :goto_4
    const-string v4, "CapabilityForIncall"

    const-string v5, "exchangeCapabilitiesForVSH: mRegMan or mImsRegInfo is null "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public synthetic lambda$processCallStateChanged$0$CapabilityForIncall(Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V
    .locals 25
    .param p1, "calls"    # Ljava/util/concurrent/CopyOnWriteArrayList;
    .param p2, "phoneId"    # I
    .param p3, "imsRegInfoList"    # Ljava/util/Map;

    .line 60
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkConnectedCalls(Ljava/util/concurrent/CopyOnWriteArrayList;)I

    move-result v10

    .line 61
    .local v10, "nConnectedCalls":I
    invoke-direct {v7, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setActiveCalls(I)Ljava/util/List;

    move-result-object v11

    .line 62
    .local v11, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    invoke-direct {v7, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkPrevConnectedCalls(Ljava/util/List;)I

    move-result v12

    .line 63
    .local v12, "nPrevConnectedCalls":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processCallStateChanged: nConnectedCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nPrevConnectedCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "CapabilityForIncall"

    invoke-static {v13, v8, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    const-string v0, ""

    .line 67
    .local v0, "extFeature":Ljava/lang/String;
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v14

    .line 68
    .local v14, "ownCap":Lcom/sec/ims/options/Capabilities;
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v15

    .line 69
    .local v15, "mCapabilityConfig":Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRcsProfile:Ljava/lang/String;

    .line 71
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 72
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CALL_SERVICE:J

    invoke-virtual {v14, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasAnyFeature(J)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 73
    invoke-virtual {v14}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    .line 74
    .local v1, "features":J
    invoke-virtual {v14}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-virtual {v14}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_1

    .line 74
    :cond_2
    move-object/from16 v16, v0

    .line 77
    .end local v0    # "extFeature":Ljava/lang/String;
    .local v16, "extFeature":Ljava/lang/String;
    :goto_1
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v6

    .line 78
    .local v6, "networkType":I
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 79
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v4

    .line 78
    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v3

    .line 81
    .local v3, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;I)J

    move-result-wide v17

    .line 82
    .end local v1    # "features":J
    .local v17, "features":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 83
    .local v4, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v11, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    move-result-object v2

    .line 84
    .local v2, "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prev: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", current: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-nez v2, :cond_4

    .line 87
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v10, v1, :cond_3

    .line 88
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v5

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v22, v2

    .end local v2    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .local v22, "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    move-object v2, v5

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .local v23, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v24, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    move-wide/from16 v3, v17

    const/4 v9, 0x0

    move-object/from16 v5, v16

    move/from16 v20, v6

    .end local v6    # "networkType":I
    .local v20, "networkType":I
    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    goto/16 :goto_4

    .line 87
    .end local v20    # "networkType":I
    .end local v22    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v2    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v6    # "networkType":I
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v20, v6

    const/4 v9, 0x0

    .line 89
    .end local v2    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v6    # "networkType":I
    .restart local v20    # "networkType":I
    .restart local v22    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    if-le v10, v1, :cond_a

    .line 90
    invoke-interface/range {v24 .. v24}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v3, v17

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    goto :goto_4

    .line 94
    .end local v20    # "networkType":I
    .end local v22    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v2    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v6    # "networkType":I
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v20, v6

    const/4 v9, 0x0

    .end local v2    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v6    # "networkType":I
    .restart local v20    # "networkType":I
    .restart local v22    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .restart local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface/range {v22 .. v22}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    if-le v12, v1, :cond_6

    :cond_5
    invoke-interface/range {v24 .. v24}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne v10, v1, :cond_6

    .line 95
    invoke-interface/range {v24 .. v24}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v3, v17

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    goto :goto_3

    .line 96
    :cond_6
    invoke-interface/range {v22 .. v22}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v12, v1, :cond_7

    invoke-interface/range {v24 .. v24}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    if-gt v10, v1, :cond_8

    .line 97
    :cond_7
    invoke-interface/range {v22 .. v22}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface/range {v24 .. v24}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    if-le v10, v1, :cond_9

    .line 98
    :cond_8
    invoke-interface/range {v24 .. v24}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v3, v17

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setIncallFeature(ILjava/lang/String;JLjava/lang/String;Z)V

    .line 100
    :cond_9
    :goto_3
    move-object/from16 v0, v22

    .end local v22    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .local v0, "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    .end local v0    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v24    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_a
    :goto_4
    move v5, v9

    move/from16 v6, v20

    move-object/from16 v3, v23

    move-object/from16 v9, p3

    goto/16 :goto_2

    .line 105
    .end local v20    # "networkType":I
    .end local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "networkType":I
    :cond_b
    move-object/from16 v23, v3

    move v9, v5

    move/from16 v20, v6

    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "networkType":I
    .restart local v20    # "networkType":I
    .restart local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 106
    .local v2, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnected call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_c

    if-ne v12, v1, :cond_c

    .line 108
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 109
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 110
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    .line 112
    .end local v2    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_c
    goto :goto_5

    .line 105
    :cond_d
    move-object/from16 v0, v16

    .line 114
    .end local v16    # "extFeature":Ljava/lang/String;
    .end local v17    # "features":J
    .end local v20    # "networkType":I
    .end local v23    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "extFeature":Ljava/lang/String;
    :cond_e
    move-object/from16 v1, p1

    .line 115
    .end local v11    # "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    .local v1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public synthetic lambda$processCallStateChangedOnDeregi$1$CapabilityForIncall(Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 9
    .param p1, "calls"    # Ljava/util/concurrent/CopyOnWriteArrayList;
    .param p2, "phoneId"    # I

    .line 149
    const-string v0, "CapabilityForIncall"

    const-string v1, "mImsRegInfo: null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkConnectedCalls(Ljava/util/concurrent/CopyOnWriteArrayList;)I

    move-result v0

    .line 151
    .local v0, "nConnectedCalls":I
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->setActiveCalls(I)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->checkPrevConnectedCalls(Ljava/util/List;)I

    move-result v2

    .line 154
    .local v2, "nPrevConnectedCalls":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mIsNeedUpdateCallState:Z

    .line 156
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 157
    .local v5, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    move-result-object v7

    .line 158
    .local v7, "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    if-nez v7, :cond_0

    .line 160
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v0, v3, :cond_6

    .line 161
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_0
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v0, v3, :cond_2

    .line 165
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_2
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    if-ne v2, v3, :cond_3

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    if-gt v0, v3, :cond_4

    .line 167
    :cond_3
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    if-le v0, v3, :cond_5

    .line 168
    :cond_4
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v8, p2, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 170
    :cond_5
    :goto_1
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 172
    .end local v5    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v7    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_6
    :goto_2
    goto :goto_0

    .line 175
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 176
    .restart local v5    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v2, v3, :cond_8

    .line 177
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7, p2, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCallNumber(ILjava/lang/String;)V

    .line 179
    .end local v5    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_8
    goto :goto_3

    .line 180
    :cond_9
    move-object v1, p1

    .line 181
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Map;)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "calls":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    .local p3, "imsRegInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$z3DMSLvJtxkE14zgiU_0Ta-Zw7Q;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;ILjava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public processCallStateChangedOnDeregi(ILjava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p2, "calls":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$CapabilityForIncall$LgULhFE3OtqfmbuK5m1PFRbjtc0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 264
    const-string/jumbo v0, "options"

    invoke-virtual {p2, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 267
    .local v0, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    .line 268
    .local v1, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 270
    .local v3, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 272
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v6, v4, v7, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)Z

    .line 274
    .end local v3    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 277
    .end local v0    # "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    .end local v1    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_1
    return-void
.end method
