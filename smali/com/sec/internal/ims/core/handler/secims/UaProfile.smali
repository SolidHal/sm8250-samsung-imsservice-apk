.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile;
.super Ljava/lang/Object;
.source "UaProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    }
.end annotation


# static fields
.field public static final TEXT_MODE_CS_TTY:I = 0x1

.field public static final TEXT_MODE_NONE:I = 0x0

.field public static final TEXT_MODE_PS_TTY:I = 0x2

.field public static final TEXT_MODE_RTT:I = 0x3


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

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEmergencyProfile:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPrecondEnabled:Z

.field isPrecondInitialSendrecv:Z

.field isPttSupported:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTlsEnabled:Z

.field isTransportNeeded:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isipsec:Z

.field issipoutbound:Z

.field lastPaniHeader:Ljava/lang/String;

.field linkedImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field sessionExpires:I

.field sessionRefresher:Ljava/lang/String;

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

.field supportSubscribeDialogEvent:Z

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
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->profileId:I

    .line 619
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    .line 620
    iget-wide v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    iput-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->netId:J

    .line 621
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    .line 622
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    .line 623
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    .line 624
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    .line 625
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    .line 626
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    .line 627
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    .line 628
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    .line 629
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->controlDscp:I

    .line 630
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    .line 631
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    .line 632
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    .line 633
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    .line 634
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsServerHeaderEnabled:Z

    .line 635
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    .line 636
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    .line 637
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    .line 638
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTlsEnabled:Z

    .line 639
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    .line 640
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->preferredId:Ljava/lang/String;

    .line 641
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    .line 642
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    .line 644
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    .line 645
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    .line 646
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfPort:I

    .line 647
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    .line 649
    :try_start_0
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondEnabled:Z

    .line 654
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondInitialSendrecv:Z

    .line 655
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isRcsTelephonyFeatureTagRequired:Z

    .line 656
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isFullCodecOfferRequired:Z

    .line 657
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionExpires:I

    .line 658
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->minSe:I

    .line 659
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionRefresher:Ljava/lang/String;

    .line 660
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regExpires:I

    .line 661
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    .line 662
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->displayName:Ljava/lang/String;

    .line 663
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->contactDisplayName:Ljava/lang/String;

    .line 664
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    .line 665
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    .line 666
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->realm:Ljava/lang/String;

    .line 667
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    .line 668
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 669
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mssSize:I

    .line 670
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sipMobility:I

    .line 672
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer1:I

    .line 673
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer2:I

    .line 674
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer4:I

    .line 675
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerA:I

    .line 676
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerB:I

    .line 677
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerC:I

    .line 678
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerD:I

    .line 679
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerE:I

    .line 680
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerF:I

    .line 681
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerG:I

    .line 682
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerH:I

    .line 683
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerI:I

    .line 684
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerJ:I

    .line 685
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerK:I

    .line 686
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerTS:I

    .line 688
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSoftphoneEnabled:Z

    .line 689
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isCdmalessEnabled:Z

    .line 690
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    .line 691
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    .line 692
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableGruu:Z

    .line 693
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableSessionId:Z

    .line 694
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->audioEngineType:I

    .line 695
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    .line 696
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isVceConfigEnabled:Z

    .line 697
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isGcfConfigEnabled:Z

    .line 698
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isNsdsServiceEnabled:Z

    .line 699
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isMsrpBearerUsed:Z

    .line 700
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->subscriberTimer:I

    .line 701
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    .line 702
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->accessToken:Ljava/lang/String;

    .line 703
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authServerUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authServerUrl:Ljava/lang/String;

    .line 704
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useKeepAlive:Z

    .line 705
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selfPort:I

    .line 706
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->scmVersion:I

    .line 707
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->msrpTransType:Ljava/lang/String;

    .line 708
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    .line 709
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->textMode:I

    .line 710
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rcsProfile:I

    .line 711
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTransportNeeded:Z

    .line 712
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rat:I

    .line 713
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->dbrTimer:I

    .line 714
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTcpGracefulShutdownEnabled:Z

    .line 715
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUacErrorcode:I

    .line 716
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUasErrorcode:I

    .line 717
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->privacyHeaderRestricted:Ljava/lang/String;

    .line 718
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->usePemHeader:Z

    .line 719
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->phoneId:I

    .line 720
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportEct:Z

    .line 721
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->earlyMediaRtpTimeoutTimer:I

    .line 722
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addHistinfo:Z

    .line 723
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportedGeolocationPhase:I

    .line 724
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfSipMsg:I

    .line 725
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useProvisionalResponse100rel:Z

    .line 726
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use183OnProgressIncoming:Z

    .line 727
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useQ850causeOn480:Z

    .line 728
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support183ForIr92v9Precondition:Z

    .line 729
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportImsNotAvailable:Z

    .line 730
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportLtePreferred:Z

    .line 731
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useSubcontactWhenResub:Z

    .line 732
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUpgradePrecondition:Z

    .line 733
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportReplaceMerge:Z

    .line 734
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    .line 735
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->lastPaniHeader:Ljava/lang/String;

    .line 736
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selectTransportAfterTcpReset:Ljava/lang/String;

    .line 737
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->srvccVersion:I

    .line 738
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportSubscribeDialogEvent:Z

    .line 739
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    .line 740
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcType:I

    .line 741
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->videoCrbtSupportType:I

    .line 742
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->retryInviteOnTcpReset:Z

    .line 743
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->enableVerstat:Z

    .line 744
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryBaseTime:I

    .line 745
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryMaxTime:I

    .line 746
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualRcs:Z

    .line 747
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tryReregisterFromKeepalive:Z

    .line 748
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPttSupported:Z

    .line 749
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sslType:I

    .line 750
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support199ProvisionalResponse:Z

    .line 751
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    .line 752
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ignoreDisplayName:Z

    .line 753
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportNetworkInitUssi:Z

    .line 754
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sendByeForUssi:Z

    .line 755
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportRfc6337ForDelayedOffer:Z

    .line 756
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hashAlgoType:I

    .line 757
    return-void
.end method


# virtual methods
.method public getAcb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAddHistinfo()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addHistinfo:Z

    return v0
.end method

.method public getAudioEngineType()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->audioEngineType:I

    return v0
.end method

.method public getAuthServerUrl()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthalg()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-object v0
.end method

.method public getCmcType()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcType:I

    return v0
.end method

.method public getControlDscp()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->controlDscp:I

    return v0
.end method

.method public getCurPani()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    return-object v0
.end method

.method public getDbrTimer()I
    .locals 1

    .line 464
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->dbrTimer:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEarlyMediaRtpTimeoutTimer()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->earlyMediaRtpTimeoutTimer:I

    return v0
.end method

.method public getEnableVerstat()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->enableVerstat:Z

    return v0
.end method

.method public getEncralg()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    return-object v0
.end method

.method public getHashAlgoTypeType()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hashAlgoType:I

    return v0
.end method

.method public getIface()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    return-object v0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    return-object v0
.end method

.method public getImpu()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEnableGruu()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableGruu:Z

    return v0
.end method

.method public getIsEnableSessionId()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableSessionId:Z

    return v0
.end method

.method public getIsPttSupported()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPttSupported:Z

    return v0
.end method

.method public getIsSimMobility()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    return v0
.end method

.method public getIsTcpGracefulShutdownEnabled()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTcpGracefulShutdownEnabled:Z

    return v0
.end method

.method public getIsTransportNeeded()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTransportNeeded:Z

    return v0
.end method

.method public getIsXqEnabled()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    return v0
.end method

.method public getLastPaniHeader()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->lastPaniHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedImpuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    return-object v0
.end method

.method public getMno()Lcom/sec/internal/constants/Mno;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    return-object v0
.end method

.method public getMssSize()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mssSize:I

    return v0
.end method

.method public getNeedPidfSipMsg()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfSipMsg:I

    return v0
.end method

.method public getNetId()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->netId:J

    return-wide v0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfIp()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPcscfPort()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfPort:I

    return v0
.end method

.method public getPdn()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->phoneId:I

    return v0
.end method

.method public getPrivacyHeaderRestricted()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->privacyHeaderRestricted:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->profileId:I

    return v0
.end method

.method public getQparam()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    return v0
.end method

.method public getRat()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rat:I

    return v0
.end method

.method public getRcsProfile()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rcsProfile:I

    return v0
.end method

.method public getRegExpires()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regExpires:I

    return v0
.end method

.method public getRegRetryBaseTime()I
    .locals 1

    .line 579
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryBaseTime:I

    return v0
.end method

.method public getRegRetryMaxTime()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryMaxTime:I

    return v0
.end method

.method public getRegisteralgo()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteuritype()Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method

.method public getRetryInviteOnTcpReset()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->retryInviteOnTcpReset:Z

    return v0
.end method

.method public getRingbackTimer()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    return v0
.end method

.method public getRingingTimer()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    return v0
.end method

.method public getSelectTransportAfterTcpReset()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selectTransportAfterTcpReset:Ljava/lang/String;

    return-object v0
.end method

.method public getSendByeForUssi()Z
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sendByeForUssi:Z

    return v0
.end method

.method public getServiceList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    return-object v0
.end method

.method public getSipMobility()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sipMobility:I

    return v0
.end method

.method public getSrvccVersion()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->srvccVersion:I

    return v0
.end method

.method public getSslType()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sslType:I

    return v0
.end method

.method public getSupport183ForIr92v9Precondition()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support183ForIr92v9Precondition:Z

    return v0
.end method

.method public getSupport199ProvisionalResponse()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support199ProvisionalResponse:Z

    return v0
.end method

.method public getSupportAccessType()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    return v0
.end method

.method public getSupportDualRcs()Z
    .locals 1

    .line 585
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualRcs:Z

    return v0
.end method

.method public getSupportEct()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportEct:Z

    return v0
.end method

.method public getSupportImsNotAvailable()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportImsNotAvailable:Z

    return v0
.end method

.method public getSupportLtePreferred()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportLtePreferred:Z

    return v0
.end method

.method public getSupportNetworkInitUssi()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportNetworkInitUssi:Z

    return v0
.end method

.method public getSupportReplaceMerge()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportReplaceMerge:Z

    return v0
.end method

.method public getSupportRfc6337ForDelayedOffer()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportRfc6337ForDelayedOffer:Z

    return v0
.end method

.method public getSupportUpgradePrecondition()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUpgradePrecondition:Z

    return v0
.end method

.method public getSupportedGeolocationPhase()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportedGeolocationPhase:I

    return v0
.end method

.method public getTcpRstUacErrorcode()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUacErrorcode:I

    return v0
.end method

.method public getTcpRstUasErrorcode()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUasErrorcode:I

    return v0
.end method

.method public getTextMode()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->textMode:I

    return v0
.end method

.method public getTimer1()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer1:I

    return v0
.end method

.method public getTimer2()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer2:I

    return v0
.end method

.method public getTimer4()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer4:I

    return v0
.end method

.method public getTimerA()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerA:I

    return v0
.end method

.method public getTimerB()I
    .locals 1

    .line 348
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerB:I

    return v0
.end method

.method public getTimerC()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerC:I

    return v0
.end method

.method public getTimerD()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerD:I

    return v0
.end method

.method public getTimerE()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerE:I

    return v0
.end method

.method public getTimerF()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerF:I

    return v0
.end method

.method public getTimerG()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerG:I

    return v0
.end method

.method public getTimerH()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerH:I

    return v0
.end method

.method public getTimerI()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerI:I

    return v0
.end method

.method public getTimerJ()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerJ:I

    return v0
.end method

.method public getTimerK()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerK:I

    return v0
.end method

.method public getTimerTS()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerTS:I

    return v0
.end method

.method public getTranstype()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    return-object v0
.end method

.method public getTryReregisterFromKeepalive()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tryReregisterFromKeepalive:Z

    return v0
.end method

.method public getUse183OnProgressIncoming()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use183OnProgressIncoming:Z

    return v0
.end method

.method public getUsePemHeader()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->usePemHeader:Z

    return v0
.end method

.method public getUseProvisionalResponse100rel()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useProvisionalResponse100rel:Z

    return v0
.end method

.method public getUseQ850causeOn480()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useQ850causeOn480:Z

    return v0
.end method

.method public getUseSubcontactWhenResub()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useSubcontactWhenResub:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCrbtSupportType()I
    .locals 1

    .line 572
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->videoCrbtSupportType:I

    return v0
.end method

.method public getisSubscribeReg()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    return v0
.end method

.method public getpreferredId()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->preferredId:Ljava/lang/String;

    return-object v0
.end method

.method public isDisplayNameIgnored()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ignoreDisplayName:Z

    return v0
.end method

.method public isIsEmergencyProfile()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    return v0
.end method

.method public isIsSipOutbound()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    return v0
.end method

.method public isIsipsec()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    return v0
.end method

.method public isServerHeaderEnabled()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsServerHeaderEnabled:Z

    return v0
.end method

.method public isTlsEnabled()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTlsEnabled:Z

    return v0
.end method

.method public isWifiPreConditionEnabled()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    return v0
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)V
    .locals 0
    .param p1, "cp"    # Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 324
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 325
    return-void
.end method

.method public setCurPani(Ljava/lang/String;)V
    .locals 0
    .param p1, "pani"    # Ljava/lang/String;

    .line 424
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setImpu(Ljava/lang/String;)V
    .locals 0
    .param p1, "impu"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setLinkedImpuList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "linkedImpuLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    .line 297
    return-void
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)V
    .locals 2
    .param p1, "cap"    # Lcom/sec/ims/options/Capabilities;

    .line 305
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    .line 309
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-void
.end method

.method public setPcscfIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setServiceList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "svcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    .line 293
    return-void
.end method

.method public shouldUseCompactHeader()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    return v0
.end method
