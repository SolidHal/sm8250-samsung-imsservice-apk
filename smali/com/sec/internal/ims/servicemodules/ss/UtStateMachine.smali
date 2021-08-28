.class public Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "UtStateMachine.java"


# static fields
.field public static final DOCUMENT_CACHE_RESET_TIMEOUT:I = 0x3e8

.field public static final EVENT_CACHE_RESULT_PARSE:I = 0xd

.field public static final EVENT_DISCONNECT_PDN:I = 0x2

.field public static final EVENT_DOCUMENT_CACHE_RESET:I = 0x5

.field public static final EVENT_GET_RESULT_FAIL:I = 0xb

.field public static final EVENT_GET_RESULT_SUCCESS:I = 0xa

.field public static final EVENT_INIT_SS_403:I = 0xe

.field public static final EVENT_PDN_CONNECTED:I = 0x1

.field public static final EVENT_PDN_DISCONNECTED:I = 0x3

.field public static final EVENT_REQUEST_FAIL:I = 0xc

.field public static final EVENT_REQUEST_TIMEOUT:I = 0xf

.field public static final EVENT_SEPARATE_CFNL:I = 0x6

.field public static final EVENT_SEPARATE_CFNRY:I = 0x7

.field public static final EVENT_SEPARATE_CF_ALL:I = 0x8

.field public static final EVENT_SEPARATE_MEDIA:I = 0x9

.field public static final EVENT_TERMINAL_REQUEST:I = 0x4

.field public static final HOUR:I = 0x36ee80

.field public static final HTTP_CONNECTION_TIMEOUT:J = 0x2710L

.field public static final HTTP_READ_TIMEOUT:J = 0x2710L

.field public static final HTTP_READ_TIMEOUT_GCF:J = 0x7d0L

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_RETRY_COUNT_412:I = 0x3

.field public static final MINUTE:I = 0xea60

.field public static final PDN_LINGER_TIMEOUT:I = 0x1388

.field public static final QUERY_FIRST:I = 0x65

.field public static final REQUEST_PDN:I = 0x64

.field private static mCBIdCounter:I


# instance fields
.field public isGetAfter412:Z

.field public isGetBeforePut:Z

.field public isRetryingCreatePdn:Z

.field private mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

.field public mBsfRetryCounter:I

.field protected mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

.field private mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

.field private mContext:Landroid/content/Context;

.field public mCount412RetryDone:I

.field protected mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

.field public mForce403Error:Z

.field protected mHasCFCache:Z

.field protected mHasICBCache:Z

.field protected mHasOCBCache:Z

.field protected mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field public mIsFailedBySuspended:Z

.field public mIsGetSdBy404:Z

.field private mIsRunningRequest:Z

.field public mIsSuspended:Z

.field public mIsUtConnectionError:Z

.field protected mLocalAddress:Ljava/net/InetAddress;

.field public mMainCondition:I

.field public mNafRetryCounter:I

.field private mNetwork:Landroid/net/Network;

.field protected mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

.field public mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field public mPdnRetryCounter:I

.field public mPdnType:I

.field private mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtProfile;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoneId:I

.field public mPrevGetType:I

.field protected mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

.field protected mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

.field protected mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

.field protected mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

.field public mSentSimServDoc:Z

.field public mSeparatedCFNL:Z

.field public mSeparatedCFNRY:Z

.field public mSeparatedCfAll:Z

.field public mSeparatedMedia:Z

.field public mSocketFactory:Ljavax/net/SocketFactory;

.field protected mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

.field mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

.field public mUtHttpRetryCounter:I

.field public mUtRetryCounter:I

.field public final mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

.field public needPdnRequestForCW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "module"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    .param p4, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p5, "ctx"    # Landroid/content/Context;

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 66
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    .line 67
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    .line 68
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 69
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 72
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 74
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    .line 77
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 81
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 116
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mLocalAddress:Ljava/net/InetAddress;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    .line 122
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    .line 123
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSentSimServDoc:Z

    .line 127
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 1891
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 1942
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$3;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 131
    iput-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 132
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 133
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 134
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    .line 137
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    .line 138
    return-void
.end method

.method private UpdateDnsInfo()V
    .locals 8

    .line 1955
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v0

    .line 1956
    .local v0, "dnses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1958
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1959
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1960
    .local v2, "itdns":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, v2}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    nop

    .end local v2    # "itdns":Ljava/lang/String;
    goto :goto_0

    .line 1962
    :catch_0
    move-exception v1

    .line 1963
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "UnknownHostException"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1964
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    nop

    .line 1971
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v1

    .line 1973
    .local v1, "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    if-eqz v1, :cond_2

    .line 1974
    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    .line 1975
    .local v2, "linkAddrList":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    if-eqz v2, :cond_2

    .line 1976
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1977
    .local v4, "la":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1978
    .local v5, "address":Ljava/net/InetAddress;
    if-eqz v5, :cond_1

    .line 1980
    :try_start_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mLocalAddress:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1982
    goto :goto_2

    .line 1981
    :catch_1
    move-exception v6

    .line 1984
    .end local v4    # "la":Landroid/net/LinkAddress;
    .end local v5    # "address":Ljava/net/InetAddress;
    :cond_1
    :goto_2
    goto :goto_1

    .line 1987
    .end local v2    # "linkAddrList":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_2
    return-void

    .line 1966
    .end local v1    # "lp":Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "Dns Service List is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1967
    const/16 v1, 0xc

    const/16 v2, 0x3fa

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1968
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
    .param p1, "x1"    # Landroid/net/Network;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->UpdateDnsInfo()V

    return-void
.end method

.method private addKddiCbRules(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 11
    .param p1, "CBCache"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1145
    if-nez p1, :cond_0

    .line 1146
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    move-object p1, v0

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/16 v1, 0xa

    const-string v2, " media = "

    const-string v3, " conditions = "

    const-string v4, "KDDI_UT added rule id = "

    const/4 v5, 0x6

    if-ne v0, v1, :cond_3

    .line 1152
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1153
    .local v0, "newCBCache":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->valueList:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->parseSIBtarget([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1154
    .local v1, "newSIBRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 1155
    .local v7, "r":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->rules:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    sget-object v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    .end local v7    # "r":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    goto :goto_0

    .line 1158
    :cond_1
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->isExist(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1159
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p1, v5, v2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v2

    .line 1160
    .local v2, "oldAcrRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->rules:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    .end local v2    # "oldAcrRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    :cond_2
    return-object v0

    .line 1163
    .end local v0    # "newCBCache":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .end local v1    # "newSIBRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;>;"
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v5, :cond_4

    .line 1165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-direct {p0, v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v0

    .line 1166
    .local v0, "newAcrRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v6, "ss_icb_anonymous_ruleid"

    const-string v7, ""

    invoke-virtual {v1, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    .line 1167
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1168
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    .end local v0    # "newAcrRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    :cond_4
    return-object p1
.end method

.method private checkUtInternalError()I
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x74

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetSDby404()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "No need to request GetSimservDoc"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    const/16 v0, 0x3e9

    return v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "SS request is blocked by previous 403 error"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    const/16 v0, 0x3eb

    return v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 249
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "not support All CB over IMS. CSFB."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    const/16 v0, 0x3ea

    return v0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkAvailabilityError(I)I

    move-result v0

    .line 254
    .local v0, "availability":I
    if-eqz v0, :cond_3

    .line 255
    return v0

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isInvalidUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    const/16 v1, 0x3f0

    return v1

    .line 262
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkXcapApn(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 263
    const/16 v1, 0x3f1

    return v1

    .line 266
    :cond_5
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 267
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    const/16 v2, 0x3f2

    return v2

    .line 271
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isServiceActive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 272
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "Service is disabled on network side"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const/16 v2, 0x3f3

    return v2

    .line 276
    :cond_8
    const/4 v2, 0x0

    return v2
.end method

.method private getApnTypeFromPdnType(I)I
    .locals 1
    .param p1, "pdnType"    # I

    .line 866
    if-eqz p1, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    .line 874
    const/4 v0, -0x1

    return v0

    .line 872
    :cond_0
    const/16 v0, 0x800

    return v0

    .line 868
    :cond_1
    const/16 v0, 0x80

    return v0

    .line 870
    :cond_2
    const/16 v0, 0x11

    return v0
.end method

.method private getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 4
    .param p1, "cache"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1383
    const/4 v0, 0x0

    .line 1385
    .local v0, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1386
    move-object v0, p2

    goto :goto_0

    .line 1387
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1388
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "no exact CB rule media match -> media ALL should be used"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1389
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1392
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getPdnType()I
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "apn_selection"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "pdnType":Ljava/lang/String;
    const-string v1, "cbs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    sget v1, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_CBS:I

    return v1

    .line 752
    :cond_0
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    const/4 v1, 0x0

    return v1

    .line 754
    :cond_1
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    const/4 v1, 0x1

    return v1

    .line 757
    :cond_2
    sget v1, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_XCAP:I

    return v1
.end method

.method private initializeUtParameters()V
    .locals 1

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 231
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 232
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    .line 234
    return-void
.end method

.method private isGCF(Lcom/sec/internal/constants/Mno;)Z
    .locals 2
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 674
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "salesCode":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_1

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CBK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 680
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isRetryPdnFailCause(I)Z
    .locals 6
    .param p1, "failCause"    # I

    .line 847
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    const v1, 0x10001

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    return v0

    .line 849
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRetryFailCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 851
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    :cond_2
    if-nez p1, :cond_4

    .line 852
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pdnRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    if-gt v2, v3, :cond_3

    .line 854
    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    goto :goto_1

    .line 856
    :cond_3
    return v0

    .line 859
    :cond_4
    :goto_1
    return v3
.end method

.method private isSupportfwd(Lcom/sec/internal/constants/Mno;)Z
    .locals 1
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1000
    sget-object v0, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_0

    .line 1002
    const/4 v0, 0x1

    return v0

    .line 1005
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUsePhoneContext(Lcom/sec/internal/constants/Mno;)Z
    .locals 3
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 670
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0
.end method

.method private makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 4
    .param p1, "condition"    # I
    .param p2, "serviceClass"    # I
    .param p3, "action"    # I

    .line 1373
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v0

    .line 1374
    .local v0, "r":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    .line 1376
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v2, 0x1

    if-eq p3, v2, :cond_1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1377
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1379
    return-object v0
.end method

.method private makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 3
    .param p1, "condition"    # I
    .param p2, "serviceClass"    # I
    .param p3, "action"    # I
    .param p4, "target"    # Ljava/lang/String;

    .line 1351
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    .line 1352
    .local v0, "r":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    .line 1354
    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1359
    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 1360
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v2, ""

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_1

    .line 1355
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v1, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1356
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iput-object p4, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1363
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1365
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1366
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1369
    :cond_3
    return-object v0
.end method

.method private notifyFailResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "error"    # Landroid/os/Bundle;

    .line 341
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    .line 342
    .local v0, "isGet412":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 343
    .local v1, "requestType":I
    const/16 v2, 0x65

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    const/16 v2, 0x77

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    return-void

    .line 345
    :pswitch_1
    if-eqz v0, :cond_1

    .line 346
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 347
    const/16 v2, 0x19c

    const-string v3, "errorCode"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v2, "errorMsg"

    const-string v3, "Precondition Failed"

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/16 v1, 0x73

    goto :goto_0

    .line 358
    :cond_0
    :pswitch_2
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 359
    nop

    .line 366
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    .line 367
    return-void

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private printCompleteLog([Landroid/os/Bundle;II)V
    .locals 4
    .param p1, "response"    # [Landroid/os/Bundle;
    .param p2, "requestType"    # I
    .param p3, "requestId"    # I

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsUt["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "log":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",<,T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2019
    .local v1, "crLog":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2020
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 2021
    const v2, 0x31000006

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2022
    return-void
.end method

.method private printFailLog(Landroid/os/Bundle;II)V
    .locals 4
    .param p1, "error"    # Landroid/os/Bundle;
    .param p2, "requestType"    # I
    .param p3, "requestId"    # I

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsUt["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]< [!ERROR]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromError(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2026
    .local v0, "log":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",<,F,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "originErrorCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, "crLog":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2029
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 2030
    const v2, 0x31000006

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 2031
    return-void
.end method

.method private requestFailed(ILjava/lang/String;)V
    .locals 16
    .param p1, "errorCode"    # I
    .param p2, "errStr"    # Ljava/lang/String;

    .line 1772
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/sec/internal/helper/httpclient/DnsController;->getNafAddrSize()I

    move-result v2

    .line 1773
    .local v2, "nafSize":I
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DnsController;->getBsfAddrSize()I

    move-result v3

    .line 1775
    .local v3, "bsfSize":I
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v4

    const-wide/16 v5, 0x7ef4

    const/16 v7, 0x3f9

    const/16 v8, 0xf

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v10, 0x7

    if-ne v4, v10, :cond_0

    .line 1776
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v11, "performing CSFB for CB_BA_ALL, ignoring handling NAPTR IP type"

    invoke-static {v4, v10, v11}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const/4 v10, 0x3

    if-ne v4, v10, :cond_1

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/lit8 v10, v4, 0x1

    if-ge v10, v2, :cond_1

    .line 1779
    add-int/2addr v4, v9

    iput v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 1780
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mNafRetryCounter: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1782
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 1783
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v4, v8, v7, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 1784
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1785
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1786
    return-void

    .line 1789
    :cond_1
    :goto_0
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 1790
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    move/from16 v10, p1

    .line 1792
    .local v10, "originErrorCode":I
    sget-object v11, Lcom/sec/internal/constants/Mno;->TELEKOM_SVN:Lcom/sec/internal/constants/Mno;

    if-ne v4, v11, :cond_2

    const/16 v11, 0x194

    move/from16 v12, p1

    if-ne v12, v11, :cond_3

    .line 1793
    const/16 v11, 0x193

    .end local p1    # "errorCode":I
    .local v11, "errorCode":I
    goto :goto_1

    .line 1792
    .end local v11    # "errorCode":I
    .restart local p1    # "errorCode":I
    :cond_2
    move/from16 v12, p1

    .line 1796
    :cond_3
    move v11, v12

    .end local p1    # "errorCode":I
    .restart local v11    # "errorCode":I
    :goto_1
    sget-object v12, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v13, 0x3f1

    const/4 v14, 0x0

    if-ne v4, v12, :cond_6

    .line 1797
    const/16 v12, 0x1f7

    if-eq v11, v12, :cond_5

    const/16 v12, 0x3ea

    if-eq v11, v12, :cond_5

    if-eq v11, v13, :cond_5

    const/16 v12, 0x3ec

    if-eq v11, v12, :cond_5

    const/16 v12, 0x3ee

    if-eq v11, v12, :cond_5

    const/16 v12, 0x3ef

    if-eq v11, v12, :cond_5

    const/16 v12, 0x3f5

    if-eq v11, v12, :cond_5

    const/16 v12, 0x3f6

    if-eq v11, v12, :cond_5

    const/16 v12, 0x2710

    if-lt v11, v12, :cond_4

    goto :goto_2

    :cond_4
    move v12, v14

    goto :goto_3

    :cond_5
    :goto_2
    move v12, v9

    .line 1807
    .local v12, "isCsfbCode":Z
    :goto_3
    if-eqz v12, :cond_6

    .line 1808
    const/16 v11, 0x193

    .line 1812
    .end local v12    # "isCsfbCode":Z
    :cond_6
    const/16 v12, 0x193

    if-ne v11, v12, :cond_7

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v15, :cond_7

    iget-boolean v15, v15, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isBlockUntilReboot:Z

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1813
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 1814
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v7, "By 403 Error, SS request will block"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1815
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 1816
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerCwdbObserver(I)V

    .line 1817
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v7, "set force CSFB by 403 Error "

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 1818
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 1819
    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendInit403MessageDelayed(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)V

    .line 1820
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v6, 0xc

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v6, v12, v7, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 1821
    return-void

    .line 1823
    :cond_7
    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v15, :cond_8

    iget-boolean v15, v15, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCsfbWithImserror:Z

    if-nez v15, :cond_9

    :cond_8
    if-eq v11, v13, :cond_9

    const/16 v13, 0x3eb

    if-ne v11, v13, :cond_a

    .line 1824
    :cond_9
    const/16 v11, 0x193

    .line 1826
    :cond_a
    sget-object v13, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is converted to "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v15, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1827
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1828
    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    const/16 v6, 0x64

    const/4 v12, 0x2

    if-eqz v5, :cond_10

    if-eqz v1, :cond_10

    .line 1829
    iput-boolean v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 1830
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v15, "UT connection failed."

    invoke-static {v5, v13, v15}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1832
    const/4 v5, 0x0

    .line 1833
    .local v5, "needRetry":Z
    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/2addr v13, v9

    if-lt v13, v2, :cond_b

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    add-int/2addr v13, v9

    if-ge v13, v3, :cond_d

    .line 1834
    :cond_b
    const-string v13, "failed to connect"

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string/jumbo v15, "xcap"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/lit8 v14, v15, 0x1

    if-ge v14, v2, :cond_c

    .line 1835
    add-int/2addr v15, v9

    iput v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 1836
    const/4 v5, 0x1

    goto :goto_4

    .line 1837
    :cond_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "bsf"

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    add-int/lit8 v14, v13, 0x1

    if-ge v14, v3, :cond_d

    .line 1838
    add-int/2addr v13, v9

    iput v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    .line 1839
    const/4 v5, 0x1

    .line 1842
    :cond_d
    :goto_4
    if-nez v5, :cond_e

    const-string/jumbo v13, "timeout"

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    if-ge v13, v12, :cond_e

    .line 1843
    add-int/2addr v13, v9

    iput v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    .line 1844
    const/4 v5, 0x1

    .line 1847
    :cond_e
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v12, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errStr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", needRetry = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", mNafRetryCounter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mBsfRetryCounter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mUtHttpRetryCounter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1849
    if-eqz v5, :cond_f

    .line 1850
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 1851
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v12, 0x7ef4

    invoke-virtual {v9, v8, v7, v12, v13}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 1852
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1853
    const-wide/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 1854
    return-void

    .line 1856
    .end local v5    # "needRetry":Z
    :cond_f
    const/16 v5, 0x193

    goto :goto_5

    :cond_10
    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    if-nez v5, :cond_11

    const/16 v5, 0x193

    if-eq v10, v5, :cond_13

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    if-ge v13, v12, :cond_13

    .line 1857
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v12, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v13, "CHN operator UT failed, retry after 5s"

    invoke-static {v5, v12, v13}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1858
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    .line 1860
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 1861
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v12, 0x7ef4

    invoke-virtual {v5, v8, v7, v12, v13}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 1862
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1863
    const-wide/16 v7, 0x1388

    invoke-virtual {v0, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 1864
    return-void

    .line 1856
    :cond_11
    const/16 v5, 0x193

    goto :goto_5

    .line 1827
    :cond_12
    const/16 v5, 0x193

    .line 1868
    :cond_13
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequest()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1869
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    .line 1870
    const/4 v6, -0x1

    iput v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    .line 1873
    :cond_14
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1874
    .local v6, "error":Landroid/os/Bundle;
    if-lez v11, :cond_15

    move v12, v11

    goto :goto_6

    :cond_15
    move v12, v5

    :goto_6
    const-string v5, "errorCode"

    invoke-virtual {v6, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1875
    const-string/jumbo v5, "originErrorCode"

    invoke-virtual {v6, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1876
    if-eqz v1, :cond_16

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v5, :cond_16

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isErrorMsgDisplay:Z

    if-eqz v5, :cond_16

    .line 1877
    new-instance v5, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;-><init>()V

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "errorMsg"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    :cond_16
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->failUtRequest(Landroid/os/Bundle;)V

    .line 1881
    return-void
.end method

.method private sendDisconnectPdnWithDelay()V
    .locals 7

    .line 768
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "loadedSim":I
    const/16 v2, 0x1388

    .line 771
    .local v2, "delay":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v4, 0x74

    if-ne v3, v4, :cond_0

    .line 772
    const/4 v2, 0x0

    goto :goto_1

    .line 774
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v3, :cond_3

    .line 775
    iget v2, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->delay_disconnect_pdn:I

    .line 776
    const/16 v3, 0x1388

    if-le v2, v3, :cond_3

    .line 778
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 779
    .local v4, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 780
    add-int/lit8 v1, v1, 0x1

    .line 782
    .end local v4    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_1
    goto :goto_0

    .line 783
    :cond_2
    if-lt v1, v0, :cond_3

    .line 784
    const/16 v2, 0x1388

    .line 790
    :cond_3
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDisconnectPdnWithDelay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms, loadedSim : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 791
    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 792
    return-void
.end method

.method private sendInit403MessageDelayed(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)V
    .locals 4
    .param p1, "errStr"    # Ljava/lang/String;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1884
    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/16 v1, 0xe

    if-ne p2, v0, :cond_0

    .line 1885
    const-wide/32 v2, 0xdbba00

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 1886
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "10 minutes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    const-wide/32 v2, 0x927c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 1889
    :cond_1
    :goto_0
    return-void
.end method

.method private setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V
    .locals 5
    .param p1, "mediaType"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .param p2, "activate"    # Z
    .param p3, "bit"    # I

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "setValue":I
    const/4 v1, 0x0

    .line 582
    .local v1, "target":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    .line 583
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v4, "ss_volte_cb_pref"

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v0

    .line 584
    const-string/jumbo v1, "ss_volte_cb_pref"

    goto :goto_0

    .line 585
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne p1, v2, :cond_1

    .line 586
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v4, "ss_video_cb_pref"

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v0

    .line 587
    const-string/jumbo v1, "ss_video_cb_pref"

    .line 589
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 590
    .local v2, "result":I
    if-eqz p2, :cond_2

    .line 591
    or-int v2, v0, p3

    goto :goto_1

    .line 593
    :cond_2
    not-int v3, p3

    and-int v2, v0, v3

    .line 595
    :goto_1
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 596
    return-void
.end method

.method private updateCallforwardingInfo(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 5
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 906
    const-string v0, ""

    .line 908
    .local v0, "mBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-nez v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0xff

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    goto :goto_0

    .line 910
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v1, v2, :cond_1

    .line 911
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 914
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v1, :cond_2

    .line 915
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 916
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 917
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previous activated number set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 921
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_4

    .line 927
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    .line 928
    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(II)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 927
    invoke-static {v1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 929
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 930
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 931
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss:Z

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-static {v1, v3, p1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 930
    invoke-static {v1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 934
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 935
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss:Z

    invoke-static {v1, v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 934
    invoke-static {v1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 923
    :cond_6
    :goto_1
    nop

    .line 924
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleSet()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 923
    invoke-static {v1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    .line 939
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v2, :cond_7

    .line 940
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->clear()V

    .line 943
    :cond_7
    return-object v0
.end method


# virtual methods
.method public clearCachedSsData(I)V
    .locals 3
    .param p1, "type"    # I

    .line 631
    const/16 v0, 0x65

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    .line 645
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 646
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 647
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 648
    return-void

    .line 641
    :cond_0
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 642
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 643
    return-void

    .line 637
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 638
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 639
    return-void

    .line 633
    :cond_2
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 634
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 635
    return-void
.end method

.method protected completeUtRequest()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "dummy":[Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    .line 282
    return-void
.end method

.method protected completeUtRequest(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    .line 293
    .local v0, "response":[Landroid/os/Bundle;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 294
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method protected completeUtRequest(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 285
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    .line 286
    .local v0, "response":[Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 287
    aget-object v1, v0, v2

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method protected completeUtRequest([Landroid/os/Bundle;)V
    .locals 6
    .param p1, "response"    # [Landroid/os/Bundle;

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 299
    .local v0, "requestType":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 301
    .local v1, "requestId":I
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->printCompleteLog([Landroid/os/Bundle;II)V

    .line 303
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 304
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    invoke-static {v3, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->correctServerAddr(II)V

    .line 308
    :cond_0
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 309
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    if-eqz v3, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendDisconnectPdnWithDelay()V

    .line 312
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 313
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 315
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v3, v4, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    .line 317
    const/16 v3, 0x65

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/16 v3, 0x67

    if-eq v0, v3, :cond_3

    const/16 v3, 0x69

    if-eq v0, v3, :cond_3

    const/16 v3, 0x73

    if-eq v0, v3, :cond_3

    const/16 v3, 0x74

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 327
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSentSimServDoc:Z

    .line 328
    goto :goto_0

    .line 323
    :cond_3
    iput v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 325
    nop

    .line 332
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 333
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v5, "Process next request..."

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    goto :goto_1

    .line 336
    :cond_4
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 338
    :goto_1
    return-void
.end method

.method protected createCBRequestId()I
    .locals 2

    .line 1519
    sget v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    .line 1520
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    .line 1522
    :cond_0
    sget v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    return v0
.end method

.method protected dequeueProfile()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 162
    .local v0, "retProfile":Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    return-object v0
.end method

.method protected disconnectPdn()V
    .locals 4

    .line 889
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 890
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectPdn: mPdnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 891
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    .line 893
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 895
    :cond_0
    return-void
.end method

.method protected enqueueProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method protected failUtRequest(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "error"    # Landroid/os/Bundle;

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 371
    .local v0, "requestType":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 373
    .local v1, "requestId":I
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->printFailLog(Landroid/os/Bundle;II)V

    .line 375
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetAfter412:Z

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 376
    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 377
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    if-eqz v3, :cond_1

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendDisconnectPdnWithDelay()V

    .line 381
    :cond_1
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 382
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_3

    :cond_2
    const-string v4, "errorCode"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x193

    if-ne v5, v6, :cond_3

    .line 383
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v7, "CTC have to retry to CDMA dial"

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 384
    const/16 v5, 0x1389

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->notifyFailResult(ILandroid/os/Bundle;)V

    .line 389
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 390
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 392
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    goto :goto_0

    .line 395
    :cond_4
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 397
    :goto_0
    return-void
.end method

.method protected getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 8
    .param p1, "type"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1225
    .local v0, "CBCache":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    const/16 v1, 0x69

    if-ne p1, v1, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1229
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 1230
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    .line 1232
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    if-eqz v4, :cond_4

    .line 1233
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v5

    .line 1234
    .local v5, "temp":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iget-object v6, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1235
    iget-object v6, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v7, v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v3, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, v6, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1237
    iget-object v1, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1239
    :cond_3
    return-object v5

    .line 1243
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v5    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    :cond_4
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 1244
    .local v4, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    iput-boolean v2, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 1245
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    .line 1246
    new-instance v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 1247
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iput v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1248
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v6, v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v3, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    iput-boolean v2, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1250
    iget-object v1, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1252
    if-nez v0, :cond_7

    .line 1253
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    move-object v0, v1

    .line 1255
    :cond_7
    iget-object v1, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 1256
    iget-object v1, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1259
    return-object v4
.end method

.method protected getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 8
    .param p1, "condition"    # I
    .param p2, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1263
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1265
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_1

    new-array v1, v4, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v5

    .line 1266
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v7}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-array v1, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    .line 1267
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1269
    :cond_1
    new-array v1, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    aput-object v7, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1270
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 1271
    .local v1, "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1272
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1273
    .end local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v7}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1274
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .restart local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    goto :goto_0

    .line 1275
    .end local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_3
    new-array v1, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v5, v1, v3

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    aput-object v5, v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1276
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 1277
    .restart local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1278
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1280
    .end local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 1283
    .restart local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1285
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_5

    .line 1286
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v7, "number change prevented for deactivation"

    invoke-static {v2, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1288
    :cond_5
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v5, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1291
    :goto_1
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v5, v4, :cond_7

    :cond_6
    move v3, v6

    :cond_7
    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_2

    .line 1293
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v4, v6, :cond_9

    .line 1295
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v6, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1296
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_b

    .line 1297
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_2

    .line 1299
    :cond_9
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v4, v2, :cond_a

    .line 1300
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v4, ""

    iput-object v4, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1301
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_2

    .line 1303
    :cond_a
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1305
    :cond_b
    :goto_2
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1307
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1308
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1309
    const-string/jumbo v3, "voicemail:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1310
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    .line 1311
    :cond_c
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_d

    .line 1312
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1316
    :cond_d
    :goto_3
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSupportfwd(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1317
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1320
    :cond_e
    return-object v1

    .line 1323
    .end local v1    # "temp":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_f
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 1324
    .local v1, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 1325
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 1327
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1328
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 1331
    :cond_10
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1332
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    .line 1333
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p1, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1334
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v4, v2, :cond_12

    .line 1335
    :cond_11
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1337
    :cond_12
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1339
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-nez v2, :cond_13

    .line 1340
    new-instance v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 1343
    :cond_13
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 1344
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1347
    return-object v1
.end method

.method protected getCbRuleId()Ljava/lang/String;
    .locals 3

    .line 1396
    const-string v0, ""

    .line 1397
    .local v0, "ruleId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_1

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    .line 1410
    return-object v0

    .line 1399
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OCB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->createCBRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1402
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1403
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    return-object v1

    .line 1404
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1405
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object v1

    .line 1407
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->createCBRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCbRuleSet(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 10
    .param p1, "type"    # I

    .line 1174
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1176
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1177
    .local v1, "CBCache":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    const/16 v2, 0x69

    if-ne p1, v2, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1181
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    .line 1182
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->addKddiCbRules(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v2

    return-object v2

    .line 1185
    :cond_1
    if-eqz v1, :cond_9

    .line 1186
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v1

    .line 1188
    const/4 v2, 0x0

    .line 1190
    .local v2, "matched":Z
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1191
    .local v4, "rule":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ELISA_FINLAND:Lcom/sec/internal/constants/Mno;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget-object v9, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    aput-object v9, v5, v6

    sget-object v6, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v5, v6, :cond_2

    .line 1193
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1194
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_2
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v5, v6, :cond_6

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1198
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1199
    :cond_3
    const/4 v2, 0x1

    .line 1201
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v6, v8, :cond_4

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v6, v9, :cond_5

    :cond_4
    move v7, v8

    :cond_5
    iput-boolean v7, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1203
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1205
    .end local v4    # "rule":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    :cond_6
    goto/16 :goto_0

    .line 1207
    :cond_7
    if-nez v2, :cond_8

    .line 1208
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v3

    .line 1209
    .local v3, "r":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1211
    .end local v3    # "r":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    :cond_8
    return-object v1

    .line 1214
    .end local v2    # "matched":Z
    :cond_9
    new-instance v2, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1215
    .local v2, "ruleset":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v3

    .line 1216
    .local v3, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1218
    return-object v2
.end method

.method protected getCbURL()Ljava/lang/String;
    .locals 5

    .line 1473
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v1, "%22%5D"

    const-string v2, "/cp:ruleset/cp:rule%5B@id=%22"

    const/16 v3, 0x69

    if-ne v0, v3, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    .line 1475
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    .line 1476
    .local v0, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    if-eqz v0, :cond_0

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 1478
    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1477
    return-object v1

    .line 1481
    .end local v0    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    :cond_0
    goto :goto_0

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    .line 1484
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    .line 1485
    .restart local v0    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    if-eqz v0, :cond_2

    .line 1486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 1487
    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1486
    return-object v1

    .line 1493
    .end local v0    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCfRuleId(I)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # I

    .line 1415
    const-string v0, ""

    .line 1417
    .local v0, "ruleId":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfu:Ljava/lang/String;

    goto :goto_0

    .line 1428
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfni:Ljava/lang/String;

    .line 1429
    goto :goto_0

    .line 1422
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnrc:Ljava/lang/String;

    .line 1423
    goto :goto_0

    .line 1425
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnr:Ljava/lang/String;

    .line 1426
    goto :goto_0

    .line 1419
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfb:Ljava/lang/String;

    .line 1420
    nop

    .line 1435
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v1, :cond_4

    .line 1436
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1441
    :cond_4
    return-object v0
.end method

.method protected getCfRuleSet()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 13

    .line 1009
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1011
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v1, 0x0

    .line 1012
    .local v1, "changes_need":Z
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v2, v7, :cond_c

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v2, v6, :cond_c

    .line 1015
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v2

    .line 1017
    .local v2, "CFCache":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    iget-object v7, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->rules:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1018
    .local v9, "tempRule":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    move-object v10, v9

    check-cast v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 1019
    .local v10, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v11, :cond_0

    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSupportfwd(Lcom/sec/internal/constants/Mno;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1020
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 1023
    :cond_0
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v11, v12, :cond_6

    sget-object v11, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v11, :cond_1

    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 1024
    invoke-static {v12}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v11, :cond_6

    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v12, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1025
    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1026
    :cond_1
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v12, 0x1

    if-ne v11, v5, :cond_2

    .line 1027
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v12, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1028
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v12, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_1

    .line 1029
    :cond_2
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v11, v12, :cond_3

    .line 1030
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v12, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1031
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1032
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v12, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_1

    .line 1035
    :cond_3
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v8, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1036
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v11, v6, :cond_4

    .line 1037
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v12, ""

    iput-object v12, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1040
    :cond_4
    :goto_1
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v12, v11, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1042
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1043
    const-string/jumbo v12, "sip:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1044
    const-string/jumbo v12, "voicemail:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1045
    iget-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, v10, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1048
    :cond_5
    const/4 v1, 0x1

    .line 1050
    .end local v9    # "tempRule":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .end local v10    # "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_6
    goto/16 :goto_0

    .line 1052
    :cond_7
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-nez v6, :cond_8

    if-eqz v1, :cond_8

    .line 1053
    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_8

    .line 1054
    return-object v2

    .line 1058
    :cond_8
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1059
    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v9, "CF rule is not present. Make new rule."

    invoke-static {v6, v7, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1060
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v6

    .line 1061
    .local v6, "r":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1062
    sget-object v7, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v7, :cond_9

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v7, v4, :cond_9

    .line 1063
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-direct {p0, v5, v4, v7, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v4

    .line 1064
    .local v4, "r_nreach":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v5, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->rules:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    .end local v4    # "r_nreach":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .end local v6    # "r":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_9
    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_a

    .line 1069
    iput v8, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_2

    .line 1070
    :cond_a
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v4, v3, :cond_b

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v3, :cond_b

    .line 1071
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1074
    :cond_b
    :goto_2
    return-object v2

    .line 1077
    .end local v2    # "CFCache":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    :cond_c
    new-instance v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 1078
    .local v2, "ruleset":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v9, v7, :cond_e

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v9, v6, :cond_d

    goto :goto_3

    .line 1106
    :cond_d
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v4

    .line 1107
    .local v4, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    goto :goto_6

    .line 1079
    .end local v4    # "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_e
    :goto_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-gt v6, v5, :cond_10

    .line 1080
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v9, v7, :cond_f

    if-nez v6, :cond_f

    .line 1081
    goto :goto_5

    .line 1084
    :cond_f
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 1085
    .local v9, "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v10, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->rules:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    .end local v9    # "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1088
    .end local v6    # "i":I
    :cond_10
    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_11

    .line 1089
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v4

    .line 1090
    .restart local v4    # "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    iget-object v5, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->rules:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    .end local v4    # "rule":Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    :cond_11
    sget-object v4, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v4, :cond_12

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1094
    :cond_12
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v4, :cond_13

    .line 1095
    iput v8, v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1097
    :cond_13
    iput v8, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1099
    :cond_14
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v4, :cond_15

    .line 1100
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iput v4, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_6

    .line 1101
    :cond_15
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v4, :cond_16

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v4, :cond_16

    .line 1102
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    iput v4, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1110
    :cond_16
    :goto_6
    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_17

    .line 1111
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v3, :cond_18

    .line 1112
    iput v8, v3, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_7

    .line 1114
    :cond_17
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v4, v3, :cond_18

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v3, :cond_18

    .line 1115
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1117
    :cond_18
    :goto_7
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 1119
    return-object v2
.end method

.method protected getCfURL()Ljava/lang/String;
    .locals 8

    .line 1445
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1446
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 1454
    const-string v1, "/NoReplyTimer"

    return-object v1

    .line 1457
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const-string v2, "%22%5D"

    const-string v3, "/cp:ruleset/cp:rule%5B@id=%22"

    if-eqz v1, :cond_4

    .line 1458
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 1459
    .local v1, "media":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    .line 1460
    .local v4, "cacheRuleId":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v5, v6, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1462
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v5

    iget-object v4, v5, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    .line 1464
    :cond_3
    if-eqz v4, :cond_4

    .line 1465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1469
    .end local v1    # "media":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v4    # "cacheRuleId":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1447
    :cond_5
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1448
    const-string v1, "?xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    return-object v1

    .line 1450
    :cond_6
    const-string v1, "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object v1
.end method

.method protected getConfig()Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    return-object v0
.end method

.method protected getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "impu":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getPreferredUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    .line 687
    .local v1, "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    const/4 v2, 0x0

    .line 688
    .local v2, "domain":Ljava/lang/String;
    const/4 v3, 0x0

    .line 689
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 691
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    const-string v5, "@"

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 693
    .local v6, "index":I
    if-lez v6, :cond_0

    .line 694
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 698
    .end local v6    # "index":I
    :cond_0
    const-string v6, "\\p{Z}|\\p{Space}"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGCF(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    const-string/jumbo v7, "tel:"

    if-eqz v6, :cond_1

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    goto/16 :goto_3

    .line 702
    :cond_1
    const-string v6, "+"

    const-string v8, ";phone-context="

    if-eqz v2, :cond_7

    sget-object v9, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v9, :cond_7

    .line 703
    sget-object v7, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    if-eq v4, v7, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 704
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 711
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_QATAR:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_3

    .line 712
    const-string v6, "+974"

    invoke-static {p1, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 714
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 705
    :cond_4
    :goto_0
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "imsDomainName":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 709
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 717
    .end local v6    # "imsDomainName":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sip:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 718
    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v5}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 720
    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 721
    sget-object v5, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_8

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";phone-context=+65"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 723
    :cond_8
    if-eqz v2, :cond_9

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isUsePhoneContext(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 725
    :cond_9
    sget-object v5, Lcom/sec/internal/constants/Mno;->SMART_CAMBODIA:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_a

    .line 726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+855"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 727
    :cond_a
    sget-object v5, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_c

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0xb

    if-ne v5, v8, :cond_b

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 730
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_e

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 733
    :cond_c
    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_d

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_d

    sget-object v5, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_e

    .line 734
    :cond_d
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, "imsDomainName":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    .end local v5    # "imsDomainName":Ljava/lang/String;
    :cond_e
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 744
    :goto_3
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected getPreferredUriType()Lcom/sec/ims/util/ImsUri$UriType;
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfUriType:Ljava/lang/String;

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    .line 666
    :cond_0
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method

.method protected getUserSetToBoolean(ILjava/lang/String;)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;

    .line 1990
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getUserSetToInt(ILjava/lang/String;I)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "defaultVal"    # I

    .line 1995
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public handleEpdgAvailabilityChanged(Z)V
    .locals 4
    .param p1, "isEpdgAvailable"    # Z

    .line 879
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEpdgAvailabilityChanged: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 880
    if-nez p1, :cond_0

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 883
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 886
    :cond_0
    return-void
.end method

.method public handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-eqz v0, :cond_5

    .line 796
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v0

    .line 797
    .local v0, "failCause":I
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getApnTypeFromPdnType(I)I

    move-result v1

    .line 798
    .local v1, "apnType":I
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    .line 799
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryPdnFailCause(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 800
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XCAP PDN setup failed. failCause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPdnRetryCounter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 802
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 810
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x2

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x37

    if-eq v0, v3, :cond_4

    const/16 v3, 0x26

    if-ne v0, v3, :cond_1

    goto/16 :goto_1

    .line 821
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_2

    .line 822
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v6, "Vodafone UK returns MISSING_UNKNOWN_APN for non VoLTE SIM."

    invoke-static {v3, v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 823
    const/16 v0, 0x21

    .line 826
    :cond_2
    const/4 v3, 0x0

    .line 827
    .local v3, "pdnFailMessage":Landroid/os/Message;
    const/16 v5, 0x21

    const/16 v6, 0xc

    if-ne v0, v5, :cond_3

    .line 828
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v8, "This SIM is not subscribed for xcap"

    invoke-static {v5, v7, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 829
    const/16 v5, 0x193

    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    .line 831
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v8, "Disconnect xcap pdn"

    invoke-static {v5, v7, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 832
    add-int/lit16 v5, v0, 0x2710

    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v3

    .line 835
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PDN failCause : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 836
    const v5, 0x31000007

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 838
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    .line 839
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 840
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 841
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 812
    .end local v3    # "pdnFailMessage":Landroid/os/Message;
    :cond_4
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v6, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED or NETWORK_FAILURE need retry."

    invoke-static {v3, v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 813
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 814
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 815
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 816
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 817
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 818
    return-void

    .line 844
    .end local v0    # "failCause":I
    .end local v1    # "apnType":I
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_5
    :goto_2
    return-void
.end method

.method public hasConditionOnCbCache()Z
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network doesn\'t have OCB condition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    return v1

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network doesn\'t have ICB condition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 445
    return v1

    .line 448
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hasConditionOnCfCache()Z
    .locals 7

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 413
    return v1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x0

    const-string v3, "The network doesn\'t have CF condition "

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 429
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    return v2

    .line 417
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 418
    .local v0, "startCond":I
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v6, v4, :cond_3

    .line 419
    const/4 v0, 0x1

    .line 421
    :cond_3
    move v4, v0

    .local v4, "cond":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 422
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->isExist(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 423
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 424
    return v2

    .line 421
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "startCond":I
    .end local v4    # "cond":I
    :cond_5
    nop

    .line 433
    :cond_6
    return v1
.end method

.method protected hasConnection()Z
    .locals 3

    .line 761
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getPdnType()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v0

    return v0
.end method

.method public hasProfile()Z
    .locals 3

    .line 2008
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-nez v0, :cond_0

    .line 2009
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "mProfile is null. so ignore"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2010
    const/4 v0, 0x0

    return v0

    .line 2012
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected init(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 145
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    .line 153
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 154
    return-void
.end method

.method public isForbidden()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    return v0
.end method

.method protected isGetSDby404()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    return v0
.end method

.method public isPutRequest()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPutRequestBlocked()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->insertNewRule:Z

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCfCache()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    return v2

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCbCache()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    return v2

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCbCache()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    return v2

    .line 226
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected isSentSimServ()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSentSimServDoc:Z

    return v0
.end method

.method public isServiceActive()Z
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->active:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x67

    if-ne v0, v3, :cond_3

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->active:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x69

    if-ne v0, v3, :cond_5

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->active:Z

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 407
    :cond_5
    return v2
.end method

.method protected makeHeader()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1498
    .local v0, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getAcceptEncoding(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-3GPP-Intended-Identity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1504
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v2

    const-string v3, "User-Agent"

    if-eqz v2, :cond_0

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 3gpp-gba"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1507
    :cond_0
    const-string v2, "3gpp-gba"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1511
    const-string v2, "Content-Type"

    const-string v3, "application/xcap-el+xml"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :cond_1
    return-object v0
.end method

.method protected makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 12

    .line 1651
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1652
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    move-object v9, v1

    .line 1653
    .local v9, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHeader()Ljava/util/HashMap;

    move-result-object v10

    .line 1655
    .local v10, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v1, :cond_0

    .line 1656
    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1659
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_3

    .line 1660
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    if-lez v1, :cond_2

    .line 1661
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1662
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    .line 1664
    :cond_1
    new-instance v11, Lcom/sec/internal/helper/httpclient/DnsController;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v6, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const/4 v7, 0x1

    move-object v1, v11

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/helper/httpclient/DnsController;-><init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V

    invoke-virtual {v9, v11}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 1667
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1683
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1685
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequest()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1686
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1687
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateUtDetailInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>([B)V

    .line 1688
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1689
    .end local v1    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_1

    .line 1690
    :cond_4
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1693
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeUri()Ljava/lang/String;

    move-result-object v1

    .line 1694
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v9, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1695
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1696
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_2

    .line 1698
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1700
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->passwd:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPassword(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1701
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_6

    .line 1702
    const-wide/16 v2, 0x7d0

    invoke-virtual {v9, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_3

    .line 1704
    :cond_6
    invoke-virtual {v9, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1707
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setIpVersion(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1709
    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_9

    .line 1710
    const/4 v2, 0x0

    .line 1711
    .local v2, "proxyAddress":Ljava/lang/String;
    const/16 v4, 0x50

    .line 1712
    .local v4, "proxyPort":I
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    if-eqz v5, :cond_7

    .line 1713
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 1714
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getProxyPort()I

    move-result v4

    .line 1716
    :cond_7
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1719
    .local v5, "proxy":Ljava/net/Proxy;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1720
    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proxyAddress : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ProxyPort : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1721
    new-instance v6, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    .line 1722
    invoke-virtual {v11, v2}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-direct {v8, v11, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 1726
    :cond_8
    goto :goto_4

    .line 1724
    :catch_0
    move-exception v6

    .line 1725
    .local v6, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1728
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :goto_4
    invoke-virtual {v9, v5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1731
    .end local v2    # "proxyAddress":Ljava/lang/String;
    .end local v4    # "proxyPort":I
    .end local v5    # "proxy":Ljava/net/Proxy;
    :cond_9
    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_a

    .line 1732
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1733
    .local v2, "proxy":Ljava/net/Proxy;
    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1736
    .end local v2    # "proxy":Ljava/net/Proxy;
    :cond_a
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_b

    .line 1737
    invoke-virtual {v9, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseImei(Z)V

    .line 1740
    :cond_b
    return-object v9
.end method

.method public makeUri()Ljava/lang/String;
    .locals 9

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1529
    .local v0, "uri":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    const/16 v2, 0x1bb

    if-ne v1, v2, :cond_0

    .line 1530
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1532
    :cond_0
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    .line 1537
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1540
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1541
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    :cond_2
    const-string v1, "/simservs.ngn.etsi.org/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/simservs.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1547
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v3, "/~~/simservs/ss:outgoing-communication-barring"

    const-string v4, "/~~/simservs/outgoing-communication-barring"

    const-string v5, "/~~/simservs/ss:incoming-communication-barring"

    const-string v6, "/~~/simservs/incoming-communication-barring"

    const-string v7, "/~~/simservs/ss:communication-diversion"

    const-string v8, "/~~/simservs/communication-diversion"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 1550
    :pswitch_0
    const-string v2, "/~~/simservs/communication-waiting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    goto/16 :goto_5

    .line 1625
    :pswitch_1
    const-string v2, "/~~/terminating-identity-presentation-restriction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1621
    :pswitch_2
    const-string v2, "/~~/terminating-identity-presentation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    goto/16 :goto_5

    .line 1613
    :pswitch_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_PUERTO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 1614
    const-string v2, "/~~/originating-identity-presentation-restriction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1616
    :cond_3
    const-string v2, "/~~/simservs/originating-identity-presentation-restriction"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    goto/16 :goto_5

    .line 1605
    :pswitch_4
    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_PUERTO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    .line 1606
    const-string v2, "/~~/originating-identity-presentation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1608
    :cond_4
    const-string v2, "/~~/simservs/originating-identity-presentation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    goto/16 :goto_5

    .line 1594
    :pswitch_5
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 1595
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1597
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-eqz v2, :cond_c

    .line 1600
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1577
    :pswitch_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_6

    .line 1578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1580
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    goto :goto_5

    .line 1584
    :pswitch_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_7

    .line 1585
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1587
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-eqz v2, :cond_c

    .line 1590
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1570
    :pswitch_8
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    .line 1571
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1573
    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    goto :goto_5

    .line 1560
    :pswitch_9
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    goto :goto_3

    .line 1563
    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1561
    :cond_a
    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    :goto_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    if-eqz v2, :cond_c

    .line 1566
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1553
    :pswitch_a
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_b

    .line 1554
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1556
    :cond_b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    nop

    .line 1629
    :cond_c
    :goto_5
    const-string v2, "cp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1630
    .local v2, "cpIndex":I
    const-string/jumbo v3, "ss:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1632
    .local v3, "ssIndex":I
    if-gtz v2, :cond_d

    if-lez v3, :cond_12

    .line 1633
    :cond_d
    sget-object v4, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v5, 0x65

    const-string/jumbo v6, "xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    if-ne v1, v4, :cond_f

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v7, 0x5

    if-eq v4, v7, :cond_e

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_f

    :cond_e
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v5, :cond_f

    .line 1635
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1637
    :cond_f
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    if-lez v2, :cond_10

    .line 1639
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    :cond_10
    if-gtz v3, :cond_11

    sget-object v4, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_12

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v5, :cond_12

    .line 1642
    :cond_11
    const-string/jumbo v4, "xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    :cond_12
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onAirplaneModeChanged(I)V
    .locals 1
    .param p1, "airplaneMode"    # I

    .line 651
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 652
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 654
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    .line 656
    :cond_0
    return-void
.end method

.method protected parseSIBtarget([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "barringList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;",
            ">;"
        }
    .end annotation

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v0, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;>;"
    if-nez p1, :cond_0

    .line 1125
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "Empty password"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1126
    return-object v0

    .line 1128
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1129
    .local v4, "tokens":Ljava/lang/String;
    new-instance v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 1130
    .local v5, "tempRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1131
    .local v6, "tempTokenList":[Ljava/lang/String;
    aget-object v7, v6, v2

    iput-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    .line 1132
    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/16 v8, 0xa

    iput v8, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1134
    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    iput-boolean v2, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 1136
    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v9, 0x2

    aget-object v9, v6, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1137
    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v9, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    iput v8, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1138
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    .end local v4    # "tokens":Ljava/lang/String;
    .end local v5    # "tempRule":Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .end local v6    # "tempTokenList":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1140
    :cond_2
    return-object v0
.end method

.method protected processTerminalRequest()V
    .locals 11

    .line 453
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process terminal request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needPdnRequestForCW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x72

    const/16 v2, 0x64

    const-string v3, "enable_call_wait"

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    const-string/jumbo v1, "ss_clir_pref"

    const-string/jumbo v2, "ss_clip_pref"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 568
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no matched type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, "error":Landroid/os/Bundle;
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->failUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 552
    .end local v0    # "error":Landroid/os/Bundle;
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 553
    .local v0, "clir":I
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 554
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    .line 555
    goto/16 :goto_4

    .line 495
    .end local v0    # "clir":I
    :pswitch_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 496
    .local v0, "clir":[I
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v2, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    aput v1, v0, v4

    .line 498
    const/4 v1, 0x4

    aput v1, v0, v3

    .line 499
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v1, "clirData":Landroid/os/Bundle;
    const-string/jumbo v2, "queryClir"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 501
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "terminal CLIR = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 503
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    .line 505
    goto/16 :goto_4

    .line 558
    .end local v0    # "clir":[I
    .end local v1    # "clirData":Landroid/os/Bundle;
    :pswitch_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 559
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    .line 560
    goto/16 :goto_4

    .line 508
    :pswitch_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v0

    .line 510
    .local v0, "status":I
    new-instance v1, Landroid/telephony/ims/ImsSsInfo;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Landroid/telephony/ims/ImsSsInfo;-><init>(ILjava/lang/String;)V

    .line 511
    .local v1, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v2, "clipData":Landroid/os/Bundle;
    const-string v3, "imsSsInfo"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 513
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "terminal CLIP = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    .line 517
    goto/16 :goto_4

    .line 539
    .end local v0    # "status":I
    .end local v1    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v2    # "clipData":Landroid/os/Bundle;
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertCbTypeToBitMask(I)I

    move-result v0

    .line 542
    .local v0, "bit":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v1, v3

    .line 544
    .local v1, "activate":Z
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-direct {p0, v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V

    .line 545
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-direct {p0, v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V

    .line 547
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    .line 548
    goto/16 :goto_4

    .line 473
    .end local v0    # "bit":I
    .end local v1    # "activate":Z
    :pswitch_5
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v1, "ss_volte_cb_pref"

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v0

    .line 474
    .local v0, "voice":I
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v2, "ss_video_cb_pref"

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    .line 477
    .local v1, "video":I
    and-int v2, v0, v1

    .line 478
    .local v2, "value":I
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertCbTypeToBitMask(I)I

    move-result v5

    .line 480
    .local v5, "bit":I
    new-array v6, v3, [Landroid/os/Bundle;

    .line 481
    .local v6, "callBarringList":[Landroid/os/Bundle;
    and-int v7, v2, v5

    if-ne v7, v5, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v4

    .line 482
    .local v7, "status":Z
    :goto_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v8, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    const-string/jumbo v9, "status"

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v9, "condition"

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v9, "serviceClass"

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    aput-object v8, v6, v4

    .line 488
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "terminal CallBarring "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v4, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    .line 492
    goto :goto_4

    .line 523
    .end local v0    # "voice":I
    .end local v1    # "video":I
    .end local v2    # "value":I
    .end local v5    # "bit":I
    .end local v6    # "callBarringList":[Landroid/os/Bundle;
    .end local v7    # "status":Z
    .end local v8    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 524
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 525
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    :goto_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_5

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    if-eqz v4, :cond_5

    .line 526
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v5, "Telstra needs to connect xcap pdn for call waiting to check non VoLTE SIM."

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 528
    return-void

    .line 531
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 532
    .local v2, "enable":Z
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v4, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;Z)V

    .line 533
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    .line 534
    goto :goto_4

    .line 457
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v2    # "enable":Z
    :cond_6
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 458
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    if-eqz v1, :cond_7

    .line 459
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessage(I)V

    .line 460
    return-void

    .line 463
    :cond_7
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToBoolean(ILjava/lang/String;)Z

    move-result v1

    .line 465
    .local v1, "status":Z
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminal CallWaiting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    .line 469
    nop

    .line 577
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v1    # "status":Z
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processUtRequest()V
    .locals 7

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 177
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->dequeueProfile()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 178
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 179
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 180
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->initializeUtParameters()V

    .line 182
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->checkUtInternalError()I

    move-result v1

    .line 183
    .local v1, "utInternalError":I
    const/16 v2, 0xc

    const-wide/16 v3, 0x64

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 185
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequestBlocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v6, "Insertion of new rule is prohibited."

    invoke-static {v0, v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    const/16 v0, 0x3f4

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 191
    return-void

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    if-eqz v2, :cond_2

    .line 195
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IJ)V

    .line 205
    :goto_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 206
    const/16 v2, 0x3f9

    const-wide/16 v3, 0x7ef4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendMessageDelayed(IIJ)V

    .line 207
    return-void
.end method

.method protected query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->enqueueProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 168
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Other request is processing now..."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    .line 173
    :goto_0
    return-void
.end method

.method public setForce403Error(Z)V
    .locals 0
    .param p1, "force403Error"    # Z

    .line 902
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    .line 903
    return-void
.end method

.method protected setSentSimServ(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 603
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSentSimServDoc:Z

    .line 604
    return-void
.end method

.method protected setUserSet(ILjava/lang/String;I)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "val"    # I

    .line 2000
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    .line 2001
    return-void
.end method

.method protected setUserSet(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "val"    # Z

    .line 2004
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 2005
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1745
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1747
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1749
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    if-eqz v0, :cond_1

    .line 1750
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 1751
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 1753
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    goto :goto_0

    .line 1761
    :cond_2
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1762
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unregisterCwdbObserver(I)V

    .line 1764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 1765
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 1756
    :cond_3
    :goto_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1757
    .local v0, "errorCode":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_4
    move-object v1, v2

    .line 1758
    .local v1, "errStr":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->requestFailed(ILjava/lang/String;)V

    .line 1759
    nop

    .line 1768
    .end local v0    # "errorCode":I
    .end local v1    # "errStr":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method protected updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;)V
    .locals 7
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .param p2, "feature"    # Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 611
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    .line 612
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 613
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 614
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ssDomain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v5, "ss_domain_setting"

    const-string v6, "CS"

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ussdDomain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    .line 615
    const-string/jumbo v5, "ussd_domain_setting"

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 620
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 622
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 623
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->removeMessages(I)V

    .line 624
    return-void
.end method

.method protected updateUtDetailInfo()Ljava/lang/String;
    .locals 6

    .line 947
    const-string v0, ""

    .line 948
    .local v0, "mBody":Ljava/lang/String;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 950
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_b

    const/16 v3, 0x67

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x69

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x73

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 976
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 977
    const-string v3, "communication-waiting"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 976
    invoke-static {v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    .line 978
    goto/16 :goto_3

    .line 985
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v3, "originating-identity-presentation-restriction"

    if-ne v1, v2, :cond_3

    .line 986
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 989
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss:Z

    invoke-static {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 980
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 981
    const-string/jumbo v3, "originating-identity-presentation"

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 980
    invoke-static {v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    .line 982
    goto/16 :goto_3

    .line 956
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    if-eqz v2, :cond_6

    goto :goto_1

    .line 958
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_8

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v2, v3, :cond_8

    .line 959
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    goto :goto_2

    .line 957
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v3, 0xff

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 962
    :cond_8
    :goto_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 963
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v4, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 966
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-nez v2, :cond_a

    .line 967
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 968
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleSet(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 967
    invoke-static {v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 970
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 972
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    .line 971
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 970
    invoke-static {v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    .line 974
    goto :goto_3

    .line 952
    :cond_b
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateCallforwardingInfo(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    .line 953
    nop

    .line 995
    :goto_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Print Body : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 996
    return-object v0
.end method
