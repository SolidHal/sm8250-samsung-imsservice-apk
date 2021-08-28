.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
.super Ljava/lang/Object;
.source "UaProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UaProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field acb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field accessToken:Ljava/lang/String;

.field addHistinfo:Z

.field audioEngineType:I

.field authServerUrl:Ljava/lang/String;

.field authalg:Ljava/lang/String;

.field callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

.field capabilities:Lcom/sec/ims/options/Capabilities;

.field cmcType:I

.field contactDisplayName:Ljava/lang/String;

.field controlDscp:I

.field curPani:Ljava/lang/String;

.field dbrTimer:I

.field displayName:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field earlyMediaRtpTimeoutTimer:I

.field enableVerstat:Z

.field encralg:Ljava/lang/String;

.field hashAlgoType:I

.field hostname:Ljava/lang/String;

.field iface:Ljava/lang/String;

.field ignoreDisplayName:Z

.field imMsgTech:Ljava/lang/String;

.field impi:Ljava/lang/String;

.field impu:Ljava/lang/String;

.field impuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPttSupported:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTransportNeeded:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isemergencysupport:Z

.field isenabletlsforsip:Z

.field isipsec:Z

.field isprecondenabled:Z

.field ispreconinitialsendrecv:Z

.field issipoutbound:Z

.field lastPaniHeader:Ljava/lang/String;

.field mIsServerHeaderEnabled:Z

.field mIsWifiPreConditionEnabled:Z

.field mUseCompactHeader:Z

.field minSe:I

.field mno:Lcom/sec/internal/constants/Mno;

.field msrpTransType:Ljava/lang/String;

.field mssSize:I

.field needPidfSipMsg:I

.field netId:J

.field password:Ljava/lang/String;

.field pcscfIp:Ljava/lang/String;

.field pcscfPort:I

.field pdn:Ljava/lang/String;

.field phoneId:I

.field preferredId:Ljava/lang/String;

.field privacyHeaderRestricted:Ljava/lang/String;

.field profileId:I

.field qparam:I

.field rat:I

.field rcsProfile:I

.field realm:Ljava/lang/String;

.field regExpires:I

.field regRetryBaseTime:I

.field regRetryMaxTime:I

.field registeralgo:Ljava/lang/String;

.field remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

.field retryInviteOnTcpReset:Z

.field ringbackTimer:I

.field ringingTimer:I

.field scmVersion:I

.field selectTransportAfterTcpReset:Ljava/lang/String;

.field selfPort:I

.field sendByeForUssi:Z

.field serviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionexpires:I

.field sessionrefresher:Ljava/lang/String;

.field sipMobility:I

.field srvccVersion:I

.field sslType:I

.field subscriberTimer:I

.field support183ForIr92v9Precondition:Z

.field support199ProvisionalResponse:Z

.field supportAccessType:Z

.field supportDualRcs:Z

.field supportEct:Z

.field supportImsNotAvailable:Z

.field supportLtePreferred:Z

.field supportNetworkInitUssi:Z

.field supportReplaceMerge:Z

.field supportRfc6337ForDelayedOffer:Z

.field supportScribeDialogEvent:Z

.field supportUpgradePrecondition:Z

.field supportedGeolocationPhase:I

.field tcpRstUacErrorcode:I

.field tcpRstUasErrorcode:I

.field textMode:I

.field timer1:I

.field timer2:I

.field timer4:I

.field timerA:I

.field timerB:I

.field timerC:I

.field timerD:I

.field timerE:I

.field timerF:I

.field timerG:I

.field timerH:I

.field timerI:I

.field timerJ:I

.field timerK:I

.field timerTS:I

.field transtype:Ljava/lang/String;

.field tryReregisterFromKeepalive:Z

.field use183OnProgressIncoming:Z

.field useKeepAlive:Z

.field usePemHeader:Z

.field useProvisionalResponse100rel:Z

.field useQ850causeOn480:Z

.field useSubcontactWhenResub:Z

.field userAgent:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field videoCrbtSupportType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1

    .line 907
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1
    .param p1, "svc"    # Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 1

    .line 911
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V

    return-object v0
.end method

.method public setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1554
    .local p1, "acb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    .line 1555
    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 1309
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->accessToken:Ljava/lang/String;

    .line 1310
    return-object p0
.end method

.method public setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "addHistinfo"    # Z

    .line 1409
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    .line 1410
    return-object p0
.end method

.method public setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "audioEngineType"    # I

    .line 1269
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    .line 1270
    return-object p0
.end method

.method public setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "authalg"    # Ljava/lang/String;

    .line 1020
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    .line 1021
    return-object p0
.end method

.method public setAuthServerUrl(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 1314
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authServerUrl:Ljava/lang/String;

    .line 1315
    return-object p0
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "callProfile"    # Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 1149
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 1150
    return-object p0
.end method

.method public setCmcType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "cmcType"    # I

    .line 1499
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcType:I

    .line 1500
    return-object p0
.end method

.method public setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "contactDisplayName"    # Ljava/lang/String;

    .line 1124
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    .line 1125
    return-object p0
.end method

.method public setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "controlDscp"    # I

    .line 985
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    .line 986
    return-object p0
.end method

.method public setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "curPani"    # Ljava/lang/String;

    .line 1274
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    .line 1275
    return-object p0
.end method

.method public setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "dbrTimer"    # I

    .line 1364
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    .line 1365
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .line 1119
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    .line 1120
    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 960
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    .line 961
    return-object p0
.end method

.method public setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enableVerstat"    # Z

    .line 1514
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    .line 1515
    return-object p0
.end method

.method public setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "earlyMediaRtpTimeoutTimer"    # I

    .line 1404
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    .line 1405
    return-object p0
.end method

.method public setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "emergency"    # Z

    .line 1045
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    .line 1046
    return-object p0
.end method

.method public setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "encralg"    # Ljava/lang/String;

    .line 1025
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    .line 1026
    return-object p0
.end method

.method public setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1284
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    .line 1285
    return-object p0
.end method

.method public setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "hashAlgoType"    # I

    .line 1579
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    .line 1580
    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .line 1030
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    .line 1031
    return-object p0
.end method

.method public setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 920
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    .line 921
    return-object p0
.end method

.method public setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "ignoreDisplayName"    # Z

    .line 1559
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    .line 1560
    return-object p0
.end method

.method public setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "msgtech"    # Ljava/lang/String;

    .line 1144
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    .line 1145
    return-object p0
.end method

.method public setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "impi"    # Ljava/lang/String;

    .line 935
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    .line 936
    return-object p0
.end method

.method public setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "impu"    # Ljava/lang/String;

    .line 940
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    .line 941
    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 1134
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    .line 1135
    return-object p0
.end method

.method public setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1234
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    .line 1235
    return-object p0
.end method

.method public setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isEnableGruu"    # Z

    .line 1259
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    .line 1260
    return-object p0
.end method

.method public setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isEnableSessionId"    # Z

    .line 1264
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    .line 1265
    return-object p0
.end method

.method public setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isFullOffer"    # Z

    .line 1089
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    .line 1090
    return-object p0
.end method

.method public setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isipsec"    # Z

    .line 1000
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    .line 1001
    return-object p0
.end method

.method public setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isRcsTelephonyRequired"    # Z

    .line 1084
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    .line 1085
    return-object p0
.end method

.method public setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "mIsServerHeaderEnabled"    # Z

    .line 1010
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    .line 1011
    return-object p0
.end method

.method public setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1
    .param p1, "simMo"    # Ljava/lang/Boolean;

    .line 1494
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    .line 1495
    return-object p0
.end method

.method public setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1229
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    .line 1230
    return-object p0
.end method

.method public setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isTcpGracefulShutdownEnabled"    # Z

    .line 1369
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    .line 1370
    return-object p0
.end method

.method public setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isTransportNeeded"    # Z

    .line 1354
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    .line 1355
    return-object p0
.end method

.method public setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1339
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    .line 1340
    return-object p0
.end method

.method public setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "lastPaniHeader"    # Ljava/lang/String;

    .line 1474
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    .line 1475
    return-object p0
.end method

.method public setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 945
    .local p1, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    .line 946
    return-object p0
.end method

.method public setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "minSe"    # I

    .line 1099
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    .line 1100
    return-object p0
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1069
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    .line 1070
    return-object p0
.end method

.method public setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "used"    # Z

    .line 1294
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    .line 1295
    return-object p0
.end method

.method public setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "msrpTransType"    # Ljava/lang/String;

    .line 1334
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    .line 1335
    return-object p0
.end method

.method public setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "mssSize"    # I

    .line 1239
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    .line 1240
    return-object p0
.end method

.method public setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "needPidfSipMsg"    # I

    .line 1419
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    .line 1420
    return-object p0
.end method

.method public setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "netId"    # J

    .line 925
    iput-wide p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    .line 926
    return-object p0
.end method

.method public setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1289
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    .line 1290
    return-object p0
.end method

.method public setOutboundSip(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "issipoutbound"    # Z

    .line 975
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    .line 976
    return-object p0
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "cap"    # Lcom/sec/ims/options/Capabilities;

    .line 1064
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    .line 1065
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 970
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    .line 971
    return-object p0
.end method

.method public setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "pcscfIp"    # Ljava/lang/String;

    .line 1035
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    .line 1036
    return-object p0
.end method

.method public setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "pcscfPort"    # I

    .line 1040
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    .line 1041
    return-object p0
.end method

.method public setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "pdn"    # Ljava/lang/String;

    .line 930
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    .line 931
    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "phoneId"    # I

    .line 1394
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    .line 1395
    return-object p0
.end method

.method public setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isPrecondEnabled"    # Z

    .line 1074
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    .line 1075
    return-object p0
.end method

.method public setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "isSendrevc"    # Z

    .line 1079
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    .line 1080
    return-object p0
.end method

.method public setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "preferredId"    # Ljava/lang/String;

    .line 950
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    .line 951
    return-object p0
.end method

.method public setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "privacyHeaderRestricted"    # Ljava/lang/String;

    .line 1384
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    .line 1385
    return-object p0
.end method

.method public setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "profileId"    # I

    .line 915
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    .line 916
    return-object p0
.end method

.method public setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "pttSupported"    # Z

    .line 1539
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    .line 1540
    return-object p0
.end method

.method public setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "qparam"    # I

    .line 980
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    .line 981
    return-object p0
.end method

.method public setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "rat"    # I

    .line 1359
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    .line 1360
    return-object p0
.end method

.method public setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "rcsProfile"    # I

    .line 1349
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    .line 1350
    return-object p0
.end method

.method public setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .line 1139
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    .line 1140
    return-object p0
.end method

.method public setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "regExpires"    # I

    .line 1109
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    .line 1110
    return-object p0
.end method

.method public setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "time"    # I

    .line 1519
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    .line 1520
    return-object p0
.end method

.method public setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "time"    # I

    .line 1524
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    .line 1525
    return-object p0
.end method

.method public setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "registeralgo"    # Ljava/lang/String;

    .line 965
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    .line 966
    return-object p0
.end method

.method public setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "remoteuritype"    # Lcom/sec/ims/util/ImsUri$UriType;

    .line 955
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    .line 956
    return-object p0
.end method

.method public setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "retryInviteOnTcpReset"    # Z

    .line 1509
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    .line 1510
    return-object p0
.end method

.method public setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "ringbackTimer"    # I

    .line 1244
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    .line 1245
    return-object p0
.end method

.method public setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "ringingTimer"    # I

    .line 1249
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    .line 1250
    return-object p0
.end method

.method public setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "scmVersion"    # I

    .line 1329
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    .line 1330
    return-object p0
.end method

.method public setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "selectTransportAfterTcpReset"    # Ljava/lang/String;

    .line 1479
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    .line 1480
    return-object p0
.end method

.method public setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "selfPort"    # I

    .line 1324
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    .line 1325
    return-object p0
.end method

.method public setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "sendByeForUssi"    # Z

    .line 1569
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    .line 1570
    return-object p0
.end method

.method public setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1050
    .local p1, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    .line 1051
    return-object p0
.end method

.method public setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "sessionExpires"    # I

    .line 1094
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    .line 1095
    return-object p0
.end method

.method public setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "sessionRefresher"    # Ljava/lang/String;

    .line 1104
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    .line 1105
    return-object p0
.end method

.method public setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "sipMobility"    # I

    .line 1254
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    .line 1255
    return-object p0
.end method

.method public setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "srvccVersion"    # I

    .line 1484
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    .line 1485
    return-object p0
.end method

.method public setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "sslType"    # I

    .line 1544
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    .line 1545
    return-object p0
.end method

.method public setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1
    .param p1, "useScribeDialogEvent"    # Ljava/lang/Boolean;

    .line 1489
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    .line 1490
    return-object p0
.end method

.method public setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1304
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    .line 1305
    return-object p0
.end method

.method public setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "subscriberTimer"    # I

    .line 1299
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    .line 1300
    return-object p0
.end method

.method public setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "support183ForIr92v9Precondition"    # Z

    .line 1444
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    .line 1445
    return-object p0
.end method

.method public setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "support199ProvisionalResponse"    # Z

    .line 1549
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    .line 1550
    return-object p0
.end method

.method public setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportAccessType"    # Z

    .line 1469
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    .line 1470
    return-object p0
.end method

.method public setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportDualRcs"    # Z

    .line 1529
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    .line 1530
    return-object p0
.end method

.method public setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportEct"    # Z

    .line 1399
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    .line 1400
    return-object p0
.end method

.method public setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportImsNotAvailable"    # Z

    .line 1449
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    .line 1450
    return-object p0
.end method

.method public setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportLtePreferred"    # Z

    .line 1454
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    .line 1455
    return-object p0
.end method

.method public setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportNetworkInitUssi"    # Z

    .line 1564
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    .line 1565
    return-object p0
.end method

.method public setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportReplaceMerge"    # Z

    .line 1464
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    .line 1465
    return-object p0
.end method

.method public setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportRfc6337ForDelayedOffer"    # Z

    .line 1574
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    .line 1575
    return-object p0
.end method

.method public setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportUpgradePrecondition"    # Z

    .line 1459
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    .line 1460
    return-object p0
.end method

.method public setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "supportedGeolocationPhase"    # I

    .line 1414
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    .line 1415
    return-object p0
.end method

.method public setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "tcpRstUacErrorcode"    # I

    .line 1374
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    .line 1375
    return-object p0
.end method

.method public setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "tcpRstUasErrorcode"    # I

    .line 1379
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    .line 1380
    return-object p0
.end method

.method public setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "textMode"    # I

    .line 1344
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    .line 1345
    return-object p0
.end method

.method public setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timer1"    # I

    .line 1154
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    .line 1155
    return-object p0
.end method

.method public setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timer2"    # I

    .line 1159
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    .line 1160
    return-object p0
.end method

.method public setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timer4"    # I

    .line 1164
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    .line 1165
    return-object p0
.end method

.method public setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerA"    # I

    .line 1169
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    .line 1170
    return-object p0
.end method

.method public setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerB"    # I

    .line 1174
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    .line 1175
    return-object p0
.end method

.method public setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerC"    # I

    .line 1179
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    .line 1180
    return-object p0
.end method

.method public setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerD"    # I

    .line 1184
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    .line 1185
    return-object p0
.end method

.method public setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerE"    # I

    .line 1189
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    .line 1190
    return-object p0
.end method

.method public setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerF"    # I

    .line 1194
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    .line 1195
    return-object p0
.end method

.method public setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerG"    # I

    .line 1199
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    .line 1200
    return-object p0
.end method

.method public setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerH"    # I

    .line 1204
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    .line 1205
    return-object p0
.end method

.method public setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerI"    # I

    .line 1209
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    .line 1210
    return-object p0
.end method

.method public setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerJ"    # I

    .line 1214
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    .line 1215
    return-object p0
.end method

.method public setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerK"    # I

    .line 1219
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    .line 1220
    return-object p0
.end method

.method public setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "timerTS"    # I

    .line 1224
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    .line 1225
    return-object p0
.end method

.method public setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "transtype"    # Ljava/lang/String;

    .line 990
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    .line 991
    return-object p0
.end method

.method public setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "tryReregisterFromKeepalive"    # Z

    .line 1534
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    .line 1535
    return-object p0
.end method

.method public setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "use183OnProgressIncoming"    # Z

    .line 1434
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    .line 1435
    return-object p0
.end method

.method public setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "useCompactHeader"    # Z

    .line 1015
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    .line 1016
    return-object p0
.end method

.method public setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1319
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    .line 1320
    return-object p0
.end method

.method public setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "usePemHeader"    # Z

    .line 1389
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    .line 1390
    return-object p0
.end method

.method public setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "useProvisionalResponse100rel"    # Z

    .line 1429
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    .line 1430
    return-object p0
.end method

.method public setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "useQ850causeOn480"    # Z

    .line 1439
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    .line 1440
    return-object p0
.end method

.method public setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "useSubcontactWhenResub"    # Z

    .line 1424
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    .line 1425
    return-object p0
.end method

.method public setUseTls(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "usetls"    # Z

    .line 995
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    .line 996
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 1114
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    .line 1115
    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .line 1129
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    .line 1130
    return-object p0
.end method

.method public setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 1279
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    .line 1280
    return-object p0
.end method

.method public setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "videoCrbtSupportType"    # I

    .line 1504
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    .line 1505
    return-object p0
.end method

.method public setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .param p1, "mIsWifiPreConditionEnabled"    # Z

    .line 1005
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    .line 1006
    return-object p0
.end method
