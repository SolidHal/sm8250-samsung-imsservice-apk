.class public Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.super Lcom/sec/internal/helper/StateMachine;
.source "UserAgent.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IUserAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    }
.end annotation


# static fields
.field private static final ECC_IWLAN:Ljava/lang/String; = "IWLAN"

.field private static final EVENT_ACCEPT_CALL_TRANSFER:I = 0x15

.field public static final EVENT_AKA_CHALLENGE_TIME_OUT:I = 0x2e

.field private static final EVENT_CREATE_UA:I = 0x1

.field private static final EVENT_DELAYED_DEREGISTERED:I = 0x320

.field private static final EVENT_DELETE_UA:I = 0x4

.field private static final EVENT_DEREGISTERED:I = 0xc

.field private static final EVENT_DEREGISTERED_TIMEOUT:I = 0xd

.field private static final EVENT_DEREGISTER_COMPLETE:I = 0xb

.field private static final EVENT_DISCONNECTED:I = 0x64

.field private static final EVENT_EMERGENCY_REGISTRATION_FAILED:I = 0x384

.field private static final EVENT_REGISTERED:I = 0x8

.field private static final EVENT_REGISTER_REQUESTED:I = 0x7

.field private static final EVENT_REG_INFO_NOTIFY:I = 0x65

.field private static final EVENT_REQUEST_ANSWER_CALL:I = 0x10

.field private static final EVENT_REQUEST_CANCEL_TRANSFER_CALL:I = 0x2d

.field private static final EVENT_REQUEST_DELETE_TCP_CLIENT_SOCKET:I = 0x31

.field private static final EVENT_REQUEST_DEREGISTER:I = 0xa

.field private static final EVENT_REQUEST_DEREGISTER_INTERNAL:I = 0x2b

.field private static final EVENT_REQUEST_END_CALL:I = 0xf

.field private static final EVENT_REQUEST_EXTEND_TO_CONFERENCE:I = 0x6b

.field private static final EVENT_REQUEST_HANDLE_CMC_CSFB:I = 0x37

.field private static final EVENT_REQUEST_HANDLE_DTMF:I = 0x17

.field private static final EVENT_REQUEST_HOLD_CALL:I = 0x11

.field private static final EVENT_REQUEST_HOLD_VIDEO:I = 0x1a

.field private static final EVENT_REQUEST_MAKE_CALL:I = 0xe

.field private static final EVENT_REQUEST_MAKE_CONF_CALL:I = 0x24

.field private static final EVENT_REQUEST_MERGE_CALL:I = 0x13

.field private static final EVENT_REQUEST_MODIFY_CALL_TYPE:I = 0x68

.field private static final EVENT_REQUEST_MODIFY_VIDEO_QUALITY:I = 0x6f

.field private static final EVENT_REQUEST_NETWORK_SUSPENDED:I = 0x26

.field private static final EVENT_REQUEST_PROGRESS_INCOMING_CALL:I = 0x19

.field private static final EVENT_REQUEST_PUBLISH:I = 0x29

.field private static final EVENT_REQUEST_PUBLISH_DIALOG:I = 0x2f

.field private static final EVENT_REQUEST_PULLING_CALL:I = 0x1d

.field private static final EVENT_REQUEST_REGISTER:I = 0x6

.field private static final EVENT_REQUEST_REJECT_CALL:I = 0x16

.field private static final EVENT_REQUEST_REJECT_MODIFY_CALL_TYPE:I = 0x6a

.field private static final EVENT_REQUEST_REPLY_MODIFY_CALL_TYPE:I = 0x69

.field private static final EVENT_REQUEST_RESUME_CALL:I = 0x12

.field private static final EVENT_REQUEST_RESUME_VIDEO:I = 0x1b

.field private static final EVENT_REQUEST_SEND_CMC_INFO:I = 0x3b

.field private static final EVENT_REQUEST_SEND_INFO:I = 0x30

.field private static final EVENT_REQUEST_SEND_TEXT:I = 0x33

.field private static final EVENT_REQUEST_START_CAMERA:I = 0x1c

.field private static final EVENT_REQUEST_START_CMC_RECORD:I = 0x3a

.field private static final EVENT_REQUEST_START_RECORD:I = 0x38

.field private static final EVENT_REQUEST_START_VIDEO_EARLYMEDIA:I = 0x36

.field private static final EVENT_REQUEST_STOP_CAMERA:I = 0x1e

.field private static final EVENT_REQUEST_STOP_RECORD:I = 0x39

.field private static final EVENT_REQUEST_TRANSFER_CALL:I = 0x14

.field private static final EVENT_REQUEST_UNPUBLISH:I = 0x2a

.field private static final EVENT_REQUEST_UPDATE_CALL:I = 0x25

.field private static final EVENT_REQUEST_UPDATE_CALLWAITING_STATUS:I = 0x27

.field private static final EVENT_RETRY_UA_CREATE:I = 0x3

.field private static final EVENT_SEND_AUTH_RESPONSE:I = 0x9

.field private static final EVENT_SEND_MEDIA_EVENT:I = 0x3e9

.field private static final EVENT_SEND_REQUEST:I = 0x3e8

.field private static final EVENT_SEND_SMS:I = 0x1f

.field private static final EVENT_SEND_SMS_RESPONSE:I = 0x21

.field private static final EVENT_SEND_SMS_RP_ACK_RESPONSE:I = 0x20

.field private static final EVENT_START_LOCAL_RINGBACKTONE:I = 0x6d

.field private static final EVENT_STOP_LOCAL_RINGBACKTONE:I = 0x6e

.field private static final EVENT_UA_CREATED:I = 0x2

.field private static final EVENT_UA_DELETED:I = 0x5

.field private static final EVENT_UPDATE_AUDIO_INTERFACE:I = 0x6c

.field private static final EVENT_UPDATE_CONF_CALL:I = 0x23

.field private static final EVENT_UPDATE_GEOLOCATION:I = 0x2c

.field private static final EVENT_UPDATE_PANI:I = 0x22

.field private static final EVENT_UPDATE_RAT:I = 0x32

.field private static final EVENT_UPDATE_ROUTE_TABLE:I = 0x66

.field private static final EVENT_UPDATE_TIME_IN_PLANI:I = 0x34

.field private static final EVENT_UPDATE_VCE_CONFIG:I = 0x28

.field private static final LOG_TAG:Ljava/lang/String; = "UserAgent"

.field private static final PROPERTY_ECC_PATH:Ljava/lang/String; = "ril.subtype"

.field protected static final hexArray:[C


# instance fields
.field mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/sec/internal/helper/State;

.field private final mDeregisteringState:Lcom/sec/internal/helper/State;

.field private mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmpMode:I

.field private final mEmergencyState:Lcom/sec/internal/helper/State;

.field private mEpdgStatus:Z

.field private mError:Lcom/sec/ims/util/SipError;

.field private mHandle:I

.field private mImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mImsProfile:Lcom/sec/ims/settings/ImsProfile;

.field private final mInitialState:Lcom/sec/internal/helper/State;

.field private mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

.field private mNetwork:Landroid/net/Network;

.field private mNotifyServiceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPdn:I

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPhoneId:I

.field private final mProhibitedState:Lcom/sec/internal/helper/State;

.field private final mReRegisteringState:Lcom/sec/internal/helper/State;

.field private final mReadyState:Lcom/sec/internal/helper/State;

.field private mRegisterSipResponse:Ljava/lang/String;

.field private final mRegisteredState:Lcom/sec/internal/helper/State;

.field private final mRegisteringState:Lcom/sec/internal/helper/State;

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRetryAfter:I

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

.field private mSuspendStatus:Z

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mTerminatingState:Lcom/sec/internal/helper/State;

.field private mThirdPartyFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2259
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "stackIF"    # Lcom/sec/internal/ims/core/handler/secims/IStackIF;
    .param p4, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p5, "pdnController"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .param p6, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p7, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 224
    const-string v0, "UserAgent - "

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 100
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 103
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    .line 104
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 106
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 107
    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 916
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1003
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1117
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1209
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1734
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 1781
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 1867
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 1911
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2032
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2059
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 225
    iput-object p6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 226
    iput-object p7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 227
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 228
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->initState()V

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 231
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 232
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 233
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 237
    const-string v0, "UserAgent - "

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 100
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 103
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    .line 104
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 106
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    iput-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 107
    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 916
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1003
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1117
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1209
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1734
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 1781
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 1867
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 1911
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2032
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2059
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 238
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/ims/util/SipError;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfter:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfter:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/ImsRegistration;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/ims/ImsRegistration;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateRouteTable(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->buildImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/ims/util/NameAddr;

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addImpu(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/ims/util/NameAddr;

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addDevice(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/ims/util/ImsUri;

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeImpu(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/ims/util/ImsUri;

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeDevice(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 74
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    return-void
.end method

.method private addDevice(Lcom/sec/ims/util/NameAddr;)V
    .locals 6
    .param p1, "addr"    # Lcom/sec/ims/util/NameAddr;

    .line 2325
    const/4 v0, 0x1

    .line 2327
    .local v0, "needToAdd":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2328
    .local v2, "na":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2329
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    const-string v4, "gr"

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2330
    const/4 v0, 0x0

    .line 2331
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    .line 2333
    .end local v2    # "na":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 2335
    :cond_1
    if-eqz v0, :cond_2

    .line 2336
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2338
    :cond_2
    return-void
.end method

.method private addImpu(Lcom/sec/ims/util/NameAddr;)V
    .locals 6
    .param p1, "addr"    # Lcom/sec/ims/util/NameAddr;

    .line 2296
    const/4 v0, 0x1

    .line 2298
    .local v0, "needToAdd":Z
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2299
    .local v2, "na":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2300
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    const-string v4, "gr"

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2301
    const/4 v0, 0x0

    .line 2302
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    .line 2304
    .end local v2    # "na":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 2306
    :cond_1
    if-eqz v0, :cond_2

    .line 2307
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2309
    :cond_2
    return-void
.end method

.method private buildImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 9

    .line 2412
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 2413
    .local v0, "subId":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2415
    .local v1, "domain":Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2416
    .local v2, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2417
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2418
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 2420
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2423
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v3

    .line 2424
    .local v3, "pcscf":Ljava/lang/String;
    const-string v4, ""

    .line 2425
    .local v4, "pAssociatedUri2nd":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_1

    .line 2426
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-direct {p0, v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 2428
    :cond_1
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2430
    .local v5, "builder":Lcom/sec/ims/ImsRegistration$Builder;
    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/ims/settings/ImsProfile;

    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v7, v8}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 2431
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2432
    invoke-virtual {v6, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2433
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 2434
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2435
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2436
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2437
    invoke-virtual {v6, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2438
    invoke-virtual {v6, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 2439
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    .line 2440
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2441
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2442
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 2443
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 2444
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 2445
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 2446
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2447
    invoke-virtual {v6, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2448
    invoke-virtual {v6, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 2449
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v6

    .line 2450
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v6

    .line 2430
    return-object v6
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 2262
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 2263
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2264
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 2265
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 2266
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 2263
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2268
    .end local v1    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "profile"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 2272
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 2274
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string v3, "]"

    const-string v4, "UserAgent["

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 2279
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2281
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2282
    .local v2, "impu":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "extractDomain: For IMSI-based registration, use phone-context as domain."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v0

    .line 2287
    goto :goto_1

    .line 2289
    .end local v2    # "impu":Lcom/sec/ims/util/NameAddr;
    :cond_1
    goto :goto_0

    .line 2292
    :cond_2
    :goto_1
    return-object v0

    .line 2275
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extractDomain:  don\'t use phone-context as domain."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return-object v0
.end method

.method private extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2471
    .local p1, "mImpuList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    const/4 v0, 0x0

    .line 2472
    .local v0, "PassociatedUri2nd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2473
    .local v1, "tempPassociatedUri2nd":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2474
    .local v2, "tempMyPhoneNumber":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2475
    const-string v3, "+82"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2477
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserAgent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "extractPAssociatedUri2nd"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/NameAddr;

    .line 2480
    .local v6, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v6}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 2481
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v7, :cond_1

    .line 2482
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "extractPAssociatedUri2nd  uri"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v8

    sget-object v9, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v8, v9, :cond_1

    .line 2484
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extractPAssociatedUri2nd: uri.toString() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2486
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2485
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2488
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2489
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2490
    move-object v0, v1

    .line 2495
    .end local v6    # "addr":Lcom/sec/ims/util/NameAddr;
    .end local v7    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    goto :goto_0

    .line 2497
    :cond_2
    return-object v0
.end method

.method private getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;
    .locals 2
    .param p1, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;

    .line 2359
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$UserAgent$XmHjemY-GsWgPrUY8EtBcPKKr7A;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$UserAgent$XmHjemY-GsWgPrUY8EtBcPKKr7A;-><init>(Lcom/sec/ims/util/ImsUri$UriType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    return-object v0
.end method

.method private getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "source"    # Ljava/lang/String;

    .line 2501
    move-object v0, p1

    .line 2503
    .local v0, "target":Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2504
    .local v1, "tokenSetForPrefix":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    const-string v2, "*31#"

    const-string v3, "[*]31#"

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    const-string v2, "#31#"

    invoke-virtual {v1, v2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2510
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserAgent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getOnlyNumberFromURI"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2513
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2514
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 2516
    .end local v4    # "token":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2518
    :cond_1
    const-string v3, "@"

    const-string v4, ";"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 2521
    .local v3, "tokenList3":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 2522
    .local v7, "token":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2523
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v0, v8, v5

    .line 2521
    .end local v7    # "token":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2527
    :cond_3
    return-object v0
.end method

.method private getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2454
    .local p1, "serviceList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "mImpuList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/NameAddr;>;"
    const/4 v0, 0x0

    .line 2456
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2458
    .local v1, "isVolteRegistered":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserAgent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPAssociatedUri2nd: isVolteRegistered = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string v2, "mmtel"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "im"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2461
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPAssociatedUri2nd() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    return-object v0
.end method

.method private getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/util/NameAddr;"
        }
    .end annotation

    .line 2363
    .local p1, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2365
    .local v0, "preferredImpu":Lcom/sec/ims/util/NameAddr;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 2366
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v3, ""

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 2367
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v2

    .line 2368
    .local v2, "impi":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 2369
    .local v5, "impu":Lcom/sec/ims/util/ImsUri;
    const/16 v6, 0x40

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2370
    .local v6, "idx":I
    if-lez v6, :cond_0

    if-eqz v5, :cond_0

    .line 2371
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2372
    .local v7, "imsi":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v8

    .line 2373
    .local v8, "user":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2378
    new-instance v9, Lcom/sec/ims/util/NameAddr;

    invoke-direct {v9, v3, v5}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    move-object v0, v9

    .line 2381
    .end local v2    # "impi":Ljava/lang/String;
    .end local v5    # "impu":Lcom/sec/ims/util/ImsUri;
    .end local v6    # "idx":I
    .end local v7    # "imsi":Ljava/lang/String;
    .end local v8    # "user":Ljava/lang/String;
    :cond_0
    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSipUriOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 2384
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 2385
    :cond_3
    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    goto :goto_1

    .line 2383
    :cond_4
    :goto_0
    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    .line 2388
    :cond_5
    :goto_1
    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreferredImpu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UserAgent"

    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2390
    if-nez v0, :cond_8

    .line 2391
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2392
    new-instance v2, Lcom/sec/ims/util/NameAddr;

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    .line 2398
    :cond_6
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2399
    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    .line 2402
    :cond_7
    if-nez v0, :cond_8

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2403
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2408
    :cond_8
    :goto_2
    return-object v0
.end method

.method private initState()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;)V

    .line 830
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 836
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 837
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 838
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->start()V

    .line 841
    return-void
.end method

.method static synthetic lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z
    .locals 1
    .param p0, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p1, "addr"    # Lcom/sec/ims/util/NameAddr;

    .line 2359
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeDevice(Lcom/sec/ims/util/ImsUri;)V
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 2341
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2343
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/util/NameAddr;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 2346
    .local v1, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2347
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, "gr"

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2348
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2350
    .end local v1    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 2351
    :cond_1
    return-void
.end method

.method private removeImpu(Lcom/sec/ims/util/ImsUri;)V
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 2312
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2314
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/util/NameAddr;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 2317
    .local v1, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2318
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, "gr"

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2319
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2321
    .end local v1    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_0
    goto :goto_0

    .line 2322
    :cond_1
    return-void
.end method

.method private setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .locals 3
    .param p1, "state"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 848
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 850
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 852
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 854
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_3

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 856
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_4

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 858
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_5

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 860
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_6

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 862
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_7

    .line 863
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 864
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_8

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 866
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_9

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 869
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 872
    :goto_0
    return-void
.end method

.method private updateRouteTable(ILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateRouteTable: op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->removeRouteToHostAddress(ILjava/lang/String;)Z

    .line 2247
    goto :goto_0

    .line 2242
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    .line 2243
    nop

    .line 2256
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCallTranfer(IZILjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z
    .param p3, "status"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 634
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCallTransfer: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accepted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string v1, "accepted"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    if-lez p3, :cond_0

    .line 641
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 646
    return-void
.end method

.method public answerCall(IILjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "cmcCallTime"    # Ljava/lang/String;

    .line 412
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmcCallEstablishTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(IIILjava/lang/Object;)V

    .line 416
    return-void
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 588
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 593
    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "eventSubscribe"    # Ljava/lang/String;
    .param p5, "dialogType"    # Ljava/lang/String;
    .param p6, "origUri"    # Ljava/lang/String;
    .param p7, "referUriType"    # Ljava/lang/String;
    .param p8, "removeReferUriType"    # Ljava/lang/String;
    .param p9, "referUriAsserted"    # Ljava/lang/String;
    .param p10, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p11, "supportPrematureEnd"    # Z
    .param p12, "result"    # Landroid/os/Message;

    .line 519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "confuri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "calltype"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string v1, "eventSubscribe"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 525
    const-string/jumbo v1, "origUri"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "referUriType"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v1, "removeReferUriType"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string/jumbo v1, "referUriAsserted"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "useAnonymousUpdate"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v1, "supportPrematureEnd"

    invoke-virtual {v0, v1, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 533
    const/16 v1, 0x24

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 534
    return-void
.end method

.method public create()I
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public deleteTcpClientSocket()V
    .locals 3

    .line 338
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string v2, "deleteTcpClientSocket:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 340
    return-void
.end method

.method public deregister(ZZ)V
    .locals 9
    .param p1, "local"    # Z
    .param p2, "isRcsRegistered"    # Z

    .line 2575
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRcsRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2579
    if-eqz p2, :cond_0

    .line 2580
    const/16 v4, 0xa

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    .line 2582
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(II)V

    .line 2584
    :goto_0
    return-void
.end method

.method public deregisterInternal(Z)V
    .locals 9
    .param p1, "local"    # Z

    .line 319
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregisterInternal: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    const/16 v4, 0x2b

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessageDelayed(IIIJ)V

    .line 321
    return-void
.end method

.method public deregisterLocal()V
    .locals 3

    .line 324
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string v2, "deregisterLocal:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 326
    return-void
.end method

.method public endCall(ILcom/sec/internal/constants/ims/SipReason;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 406
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(IIILjava/lang/Object;)V

    .line 409
    return-void
.end method

.method public extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "eventSubscribe"    # Ljava/lang/String;
    .param p5, "dialogType"    # Ljava/lang/String;
    .param p6, "sessId"    # I
    .param p7, "origUri"    # Ljava/lang/String;
    .param p8, "referUriType"    # Ljava/lang/String;
    .param p9, "removeReferUriType"    # Ljava/lang/String;
    .param p10, "referUriAsserted"    # Ljava/lang/String;
    .param p11, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p12, "supportPrematureEnd"    # Z

    .line 540
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "confuri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "calltype"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    const-string v1, "eventSubscribe"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "dialogType"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 546
    const-string/jumbo v1, "sessId"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    const-string/jumbo v1, "origUri"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string/jumbo v1, "referUriType"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string/jumbo v1, "removeReferUriType"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string/jumbo v1, "referUriAsserted"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string/jumbo v1, "useAnonymousUpdate"

    invoke-virtual {v0, v1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string/jumbo v1, "supportPrematureEnd"

    invoke-virtual {v0, v1, p12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 555
    return-void
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 1

    .line 2533
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    .line 2587
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return v0
.end method

.method public getImsProfile()Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 2620
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .line 2630
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getPdn()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return v0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 2562
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuspendState()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    return v0
.end method

.method public getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 1

    .line 2537
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object v0
.end method

.method public handleCmcCsfb(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 798
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 799
    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 800
    return-void
.end method

.method public handleDtmf(IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDtmf: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string/jumbo v1, "operation"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public holdCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 442
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 447
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 448
    return-void
.end method

.method public holdVideo(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 460
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 464
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 465
    return-void
.end method

.method public isDeregistring()Z
    .locals 2

    .line 2625
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRegistered(Z)Z
    .locals 2
    .param p1, "includeRegistering"    # Z

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRegistering()Z
    .locals 2

    .line 2542
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/Message;)V
    .locals 16
    .param p1, "destUri"    # Ljava/lang/String;
    .param p2, "origUri"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "dispName"    # Ljava/lang/String;
    .param p5, "dialedNumber"    # Ljava/lang/String;
    .param p6, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .param p7, "cli"    # Ljava/lang/String;
    .param p8, "pEmergencyInfoOfAtt"    # Ljava/lang/String;
    .param p10, "alertInfo"    # Ljava/lang/String;
    .param p11, "isLteEpsOnlyAttached"    # Z
    .param p13, "cmcBoundSessionId"    # I
    .param p14, "composerInfo"    # Landroid/os/Bundle;
    .param p15, "replaceCallId"    # Ljava/lang/String;
    .param p16, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 360
    .local p9, "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p12, "p2p":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p9

    move-object/from16 v3, p14

    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCall: destUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " origUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 360
    const-string v6, "UserAgent"

    invoke-static {v6, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "destUri"

    move-object/from16 v6, p1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v5, "origUri"

    move-object/from16 v7, p2

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v5, "result"

    move-object/from16 v8, p16

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 367
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    if-eqz p6, :cond_0

    .line 369
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    const-string v9, "additionalContentsContents"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "additionalContentsMime"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    const-string v5, "cli"

    move-object/from16 v9, p7

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v5, "dispName"

    move-object/from16 v10, p4

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v5, "alertInfo"

    move-object/from16 v11, p10

    invoke-virtual {v4, v5, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v5, "dialedNumber"

    move-object/from16 v12, p5

    invoke-virtual {v4, v5, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v5, "pEmergencyInfoOfAtt"

    move-object/from16 v13, p8

    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v5, "isLteEpsOnlyAttached"

    move/from16 v14, p11

    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    if-eqz v2, :cond_1

    .line 379
    const-string v5, "additionalSipHeaders"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 382
    :cond_1
    if-eqz p12, :cond_2

    .line 383
    move-object/from16 v5, p12

    check-cast v5, Ljava/util/ArrayList;

    const-string/jumbo v15, "p2p"

    invoke-virtual {v4, v15, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 385
    :cond_2
    const-string v5, "cmcBoundSessionId"

    move/from16 v15, p13

    invoke-virtual {v4, v5, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    if-eqz v3, :cond_3

    invoke-virtual/range {p14 .. p14}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 387
    const-string v5, "composer_data"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 389
    :cond_3
    const-string/jumbo v5, "replaceCallId"

    move-object/from16 v1, p15

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 391
    return-void
.end method

.method public mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .locals 16
    .param p1, "sessionId1"    # I
    .param p2, "sessionId2"    # I
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "callType"    # I
    .param p5, "eventSubscribe"    # Ljava/lang/String;
    .param p6, "dialogType"    # Ljava/lang/String;
    .param p7, "origUri"    # Ljava/lang/String;
    .param p8, "referUriType"    # Ljava/lang/String;
    .param p9, "removeReferUriType"    # Ljava/lang/String;
    .param p10, "referUriAsserted"    # Ljava/lang/String;
    .param p11, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p12, "supportPrematureEnd"    # Z
    .param p14, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 492
    .local p13, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v3, "UserAgent"

    const-string v4, "mergeCall: "

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 494
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "session1"

    move/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    const-string/jumbo v3, "session2"

    move/from16 v5, p2

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    const-string v3, "confuri"

    move-object/from16 v6, p3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v3, "calltype"

    move/from16 v7, p4

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 499
    const-string v3, "eventSubscribe"

    move-object/from16 v8, p5

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v3, "dialogType"

    move-object/from16 v9, p6

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v3, "origUri"

    move-object/from16 v10, p7

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string/jumbo v3, "referUriType"

    move-object/from16 v11, p8

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v3, "removeReferUriType"

    move-object/from16 v12, p9

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v3, "referUriAsserted"

    move-object/from16 v13, p10

    invoke-virtual {v2, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string/jumbo v3, "useAnonymousUpdate"

    move-object/from16 v14, p11

    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v3, "supportPrematureEnd"

    move/from16 v15, p12

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    if-eqz v1, :cond_0

    .line 508
    const-string v3, "extraHeaders"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 510
    :cond_0
    const-string/jumbo v3, "result"

    move-object/from16 v1, p14

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 512
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 513
    return-void
.end method

.method public modifyCallType(III)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "oldType"    # I
    .param p3, "newType"    # I

    .line 718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 719
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 720
    const-string v1, "oldType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 721
    const-string v1, "newType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 724
    return-void
.end method

.method public notifyE911RegistrationFailed()V
    .locals 1

    .line 2615
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 2616
    return-void
.end method

.method public progressIncomingCall(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progressIncomingCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    const/16 v0, 0x19

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(Landroid/os/Message;)V

    .line 403
    return-void
.end method

.method public publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 4
    .param p1, "origUri"    # Ljava/lang/String;
    .param p2, "dispName"    # Ljava/lang/String;
    .param p3, "xmlBody"    # Ljava/lang/String;
    .param p4, "expires"    # I
    .param p5, "result"    # Landroid/os/Message;
    .param p6, "needDelay"    # Z

    .line 615
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishDialog: origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dispName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 619
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 620
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "origUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v1, "dispName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "expires"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 626
    const/16 v1, 0x2f

    if-eqz p6, :cond_0

    .line 627
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 631
    :goto_0
    return-void
.end method

.method public pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Landroid/os/Message;)V
    .locals 4
    .param p1, "pullingUri"    # Ljava/lang/String;
    .param p2, "targetUri"    # Ljava/lang/String;
    .param p3, "origUri"    # Ljava/lang/String;
    .param p4, "targetDialog"    # Lcom/sec/ims/Dialog;
    .param p5, "result"    # Landroid/os/Message;

    .line 598
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pullingCall: pullingUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pullingUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string/jumbo v1, "targetUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string/jumbo v1, "origUri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v1, "targetDialog"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 608
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 610
    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 611
    return-void
.end method

.method public register()I
    .locals 5

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "register:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v0, "ril.subtype"

    invoke-static {v0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "eccPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eccPath : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "IWLAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 300
    .end local v0    # "eccPath":Ljava/lang/String;
    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 303
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsRegistration;->setEpdgStatus(Z)V

    .line 308
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const-string/jumbo v0, "ro.boot.hardware"

    invoke-static {v0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 315
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 274
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 275
    return-void
.end method

.method public rejectCall(ILcom/sec/ims/util/SipError;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "response"    # Lcom/sec/ims/util/SipError;

    .line 394
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    const/16 v0, 0x16

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(IIILjava/lang/Object;)V

    .line 397
    return-void
.end method

.method public rejectModifyCallType(II)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I

    .line 738
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    const/16 v1, 0x6a

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 743
    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "curType"    # I
    .param p3, "repType"    # I
    .param p4, "reqType"    # I
    .param p5, "cmcCallTime"    # Ljava/lang/String;

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string/jumbo v1, "reqType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    const-string v1, "curType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    const-string/jumbo v1, "repType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    const-string v1, "cmcCallTime"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 735
    return-void
.end method

.method public requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "presenceInfo"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 811
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "presenceInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 812
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 813
    const/16 v1, 0x29

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 814
    return-void
.end method

.method public requestUnpublish()V
    .locals 1

    .line 817
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 818
    return-void
.end method

.method public resumeCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 451
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 456
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 457
    return-void
.end method

.method public resumeVideo(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 468
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 473
    return-void
.end method

.method public sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    .line 775
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCmcInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 778
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 779
    if-eqz p2, :cond_0

    .line 780
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    const-string v2, "additionalContentsContents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "additionalContentsMime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 784
    return-void
.end method

.method public sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "type"    # I
    .param p3, "ussdType"    # I
    .param p4, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .param p5, "result"    # Landroid/os/Message;

    .line 760
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 764
    const-string v1, "calltype"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 765
    const-string/jumbo v1, "ussdtype"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 766
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 767
    if-eqz p4, :cond_0

    .line 768
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    const-string v2, "additionalContentsContents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "additionalContentsMime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 772
    return-void
.end method

.method public sendMediaEvent(III)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "event"    # I
    .param p3, "eventType"    # I

    .line 821
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 822
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "target"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 823
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 824
    const-string v1, "eventType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 825
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 826
    return-void
.end method

.method public sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    .line 352
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 353
    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "scaUri"    # Ljava/lang/String;
    .param p2, "localUri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "isDeliveryReport"    # Z
    .param p6, "callId"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .line 687
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSms: scaUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDeleveryReport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 693
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sca"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v1, "localuri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v1, "contentType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string/jumbo v1, "pdu"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 697
    const-string v1, "isDeliveryReport"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 698
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 699
    const-string v1, "callId"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 702
    return-void
.end method

.method public sendSmsResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 712
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 714
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(IIILjava/lang/Object;)V

    .line 715
    return-void
.end method

.method public sendSmsRpAckResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 706
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsRpAckResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 708
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 709
    return-void
.end method

.method public sendText(ILjava/lang/String;I)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I

    .line 432
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendText: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 434
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "len"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    const/16 v1, 0x33

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 439
    return-void
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 242
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 243
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 258
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 259
    return-void
.end method

.method public setPdn(I)V
    .locals 0
    .param p1, "pdn"    # I

    .line 250
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    .line 251
    return-void
.end method

.method public setThirdPartyFeatureTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 283
    return-void
.end method

.method public setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V
    .locals 0
    .param p1, "uaProfile"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 246
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 247
    return-void
.end method

.method public startCamera(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "cameraId"    # I

    .line 476
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    const-string v1, "cameraId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 481
    return-void
.end method

.method public startCmcRecord(IIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .locals 16
    .param p1, "sessionId"    # I
    .param p2, "audioSource"    # I
    .param p3, "outputFormat"    # I
    .param p4, "maxFileSize"    # J
    .param p6, "maxDuration"    # I
    .param p7, "outputPath"    # Ljava/lang/String;
    .param p8, "audioEncodingBR"    # I
    .param p9, "audioChannels"    # I
    .param p10, "audioSamplingR"    # I
    .param p11, "audioEncoder"    # I
    .param p12, "durationInterval"    # I
    .param p13, "fileSizeInterval"    # J
    .param p15, "author"    # Ljava/lang/String;

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCmcRecord: sessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " filePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserAgent"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 668
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "sessionId"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    const-string v4, "audioSource"

    move/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    const-string/jumbo v4, "outputFormat"

    move/from16 v6, p3

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-string v4, "maxFileSize"

    move-wide/from16 v7, p4

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 672
    const-string v4, "maxDuration"

    move/from16 v9, p6

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    const-string/jumbo v4, "outputPath"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v4, "audioEncodingBR"

    move/from16 v10, p8

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    const-string v4, "audioChannels"

    move/from16 v11, p9

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    const-string v4, "audioSamplingR"

    move/from16 v12, p10

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    const-string v4, "audioEncoder"

    move/from16 v13, p11

    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    const-string v4, "durationInterval"

    move/from16 v14, p12

    invoke-virtual {v3, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    const-string v4, "fileSizeInterval"

    move-wide/from16 v1, p13

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 680
    const-string v4, "author"

    move-object/from16 v15, p15

    invoke-virtual {v3, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/16 v4, 0x3a

    invoke-virtual {v0, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 682
    return-void
.end method

.method public startRecord(ILjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .line 649
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecord: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 650
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const-string v1, "filePath"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const/16 v1, 0x38

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 654
    return-void
.end method

.method public startVideoEarlyMedia(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 790
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    const/16 v1, 0x36

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 792
    return-void
.end method

.method public stopCamera()V
    .locals 3

    .line 484
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string/jumbo v2, "stopCamera"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 486
    return-void
.end method

.method public stopRecord(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 657
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecord: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 659
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const/16 v1, 0x39

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 661
    return-void
.end method

.method public suspended(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 329
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 330
    const/4 v0, -0x1

    const/16 v1, 0x26

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(III)V

    .line 331
    return-void
.end method

.method public terminate()V
    .locals 3

    .line 2608
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "UserAgent"

    const-string/jumbo v2, "terminate:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2610
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 2611
    return-void
.end method

.method public transferCall(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "targetUri"    # Ljava/lang/String;
    .param p3, "replacingSessionId"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 573
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " replacingSessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    const-string/jumbo v1, "targetUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-lez p3, :cond_0

    .line 580
    const-string/jumbo v1, "replacingSessionId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    :cond_0
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 584
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 585
    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 279
    return-void
.end method

.method public updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 343
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioInterface: mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 348
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 349
    return-void
.end method

.method public updateCall(IIILcom/sec/internal/constants/ims/SipReason;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "action"    # I
    .param p3, "codecType"    # I
    .param p4, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 747
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCall(): sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 749
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 750
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const-string v1, "codecType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result v1

    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reasonText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/16 v1, 0x25

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 757
    return-void
.end method

.method public updateCallwaitingStatus()V
    .locals 4

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v2, "ss_callwaiting_by_network"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 804
    .local v0, "callwaitByNetwork":Z
    if-nez v0, :cond_0

    .line 805
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 807
    :cond_0
    return-void
.end method

.method public updateConfCall(IIILjava/lang/String;)V
    .locals 3
    .param p1, "confCallSessionId"    # I
    .param p2, "cmd"    # I
    .param p3, "participantId"    # I
    .param p4, "participant"    # Ljava/lang/String;

    .line 559
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfCall  ConfSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " participantId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "confsession"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-string/jumbo v1, "updateCmd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string/jumbo v1, "participantId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string/jumbo v1, "participant"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/16 v1, 0x23

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 568
    return-void
.end method

.method public updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 1
    .param p1, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 2552
    const/16 v0, 0x2c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 2553
    return-void
.end method

.method public updatePani(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pani"    # Ljava/lang/String;
    .param p2, "lastPani"    # Ljava/lang/String;

    .line 2591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2592
    .local v0, "paniList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePani: pani="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updatePani: lastPani="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserAgent"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    return-void

    .line 2598
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2600
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2604
    :cond_1
    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 2605
    return-void
.end method

.method public updateRat(I)V
    .locals 1
    .param p1, "network"    # I

    .line 2571
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(II)V

    .line 2572
    return-void
.end method

.method public updateTimeInPlani(J)V
    .locals 2
    .param p1, "time"    # J

    .line 2566
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 2567
    return-void
.end method

.method public updateVceConfig(Z)V
    .locals 2
    .param p1, "config"    # Z

    .line 2547
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 2548
    return-void
.end method
