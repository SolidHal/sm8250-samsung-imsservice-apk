.class public Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "SmsServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
.implements Lcom/sec/internal/ims/util/IMessagingAppInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;,
        Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

.field private static final ALTERNATIVE_SERVICE:Ljava/lang/String; = "application/3gpp-ims+xml"

.field private static final ASVC_INITIAL_REGISTRATION:Ljava/lang/String; = "initial-registration"

.field private static final ASVC_RESTORATION:Ljava/lang/String; = "restoration"

.field protected static final EMERGENCY_REGISTER_DONE_EVENT:I = 0x5

.field protected static final EMERGENCY_REGISTER_FAIL_EVENT:I = 0x6

.field protected static final EMERGENCY_REGISTER_START_EVENT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_RETRANS_COUNT_ON_RP_ERR:I = 0x1

.field public static final NAME:Ljava/lang/String;

.field private static final NOTI_503_OUTAGE:I = 0x309

.field private static final NOTI_DEREGISTERED:I = 0x3e7

.field public static final NOTI_INTERNAL_ADDR_ERR:I = 0x2711

.field public static final NOTI_INTERNAL_BASE:I = 0x2710

.field public static final NOTI_INTERNAL_EMERGENCY_REGI_FAIL:I = 0x2712

.field public static final NOTI_INTERNAL_END:I = 0x2af8

.field public static final NOTI_INTERNAL_LIMITED_REGI:I = 0x2714

.field public static final NOTI_INTERNAL_NO_RP_ACK:I = 0x2713

.field private static final NOTI_SUBMIT_REPORT_TIMEOUT:I = 0x321

.field private static final RETRANS_ON_RP_ERROR_TIMEOUT:I = 0x3

.field protected static final RRC_CONNECTION_EVENT:I = 0x2

.field protected static final SCBM_TIMEOUT_EVENT:I = 0x7

.field protected static final SEND_SMS_EVENT:I = 0x3

.field private static final SIP_R_CAUSE_200_OK:I = 0xc8

.field private static final SIP_R_CAUSE_LIMITED:I = 0x194

.field private static final SIP_R_CAUSE_TEMP_ERROR:I = 0x1e0

.field protected static final SMS_EVENT:I = 0x1

.field private static final STATE_TIMEOUT:I = 0x1

.field private static final SUBMIT_REPORT_TIMEOUT:I = 0x2

.field private static final TIMER_EMERGENCY_REGISTER_FAIL:I = 0x2710

.field private static final TIMER_STATE:I = 0x2bf20

.field protected static TIMER_SUBMIT_REPORT:I = 0x0

.field private static final TIMER_SUBMIT_REPORT_SPR:I = 0x2710

.field private static final TIMER_VZW_SCBM:I = 0x493e0

.field private static final VZW_E911_FALSE:I = 0x0

.field private static final VZW_E911_REREGI:I = 0x2

.field private static final VZW_E911_TRUE:I = 0x1


# instance fields
.field private MAX_RETRANS_COUNT:I

.field private MAX_RETRANS_COUNT_SPR:I

.field private m3GPP2SendingMsgId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallState:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mEmergencyPendingQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/LinkedList<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmergencyRegiProcessiong:[Z

.field private final mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

.field private mIntForHandler:[Ljava/lang/Integer;

.field private mIsDeregisterTimerRunning:[Z

.field private mIsInScbm:[Z

.field private mIsRetryIfNoSubmitReport:Z

.field private mIsSamsungMsgApp:Z

.field private mLastMOContentType:Ljava/lang/String;

.field mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/sms/ISmsServiceEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxPhoneCount:I

.field private mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

.field private mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRetransCount:I

.field private mSamsungMsgAppVersion:Ljava/lang/String;

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mStorageAvailable:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->NAME:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    .line 97
    const v0, 0x9c40

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "smsServiceInterface"    # Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    .line 268
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT_SPR:I

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    .line 116
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    .line 134
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 135
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    .line 137
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 138
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 139
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    .line 141
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    .line 144
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    .line 269
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    .line 270
    new-array v1, v0, [Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    .line 271
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    .line 272
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    .line 274
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    .line 275
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 279
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aput-boolean v2, v1, v0

    .line 280
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aput-boolean v2, v1, v0

    .line 281
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 283
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aput-boolean v2, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    .line 286
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    .line 287
    const-string/jumbo v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    return-void
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [B
    .param p6, "x6"    # I

    .line 78
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT_SPR:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->retryToSendMessage(ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 78
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    .param p1, "x1"    # I

    .line 78
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    return p1
.end method

.method private declared-synchronized broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "messageID"    # I
    .param p3, "reasonCode"    # I
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "data"    # [B
    .param p6, "retryAfter"    # I

    monitor-enter p0

    .line 1640
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastOnReceiveSMSAck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1643
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v0, :cond_1

    .line 1645
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1646
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 1647
    add-int/lit8 v1, v1, -0x1

    .line 1649
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sec/ims/sms/ISmsServiceEventListener;

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v3 .. v8}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSAck(IILjava/lang/String;[BI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1657
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1654
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1650
    .restart local v1    # "i":I
    :catch_1
    move-exception v2

    .line 1651
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1652
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1657
    .end local v1    # "i":I
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1658
    goto :goto_4

    .line 1657
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 1654
    :catch_2
    move-exception v1

    .line 1655
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1657
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1658
    goto :goto_4

    .line 1657
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1658
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1661
    .end local v0    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    :cond_1
    :goto_4
    monitor-exit p0

    return-void

    .line 1639
    .end local p1    # "phoneId":I
    .end local p2    # "messageID":I
    .end local p3    # "reasonCode":I
    .end local p4    # "contentType":Ljava/lang/String;
    .end local p5    # "data":[B
    .end local p6    # "retryAfter":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private failPendingEmergencySms(I)V
    .locals 9
    .param p1, "phoneId"    # I

    .line 1140
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failPendingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1142
    .local v0, "tempQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1143
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1144
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1145
    .local v1, "sms":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    const/16 v5, 0x2712

    .line 1146
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 1145
    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    .line 1147
    .end local v1    # "sms":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    goto :goto_0

    .line 1148
    :cond_0
    return-void
.end method

.method private fallbackForSpecificReason(I)V
    .locals 12
    .param p1, "reason"    # I

    .line 1586
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1587
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1588
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 1589
    .local v1, "pending":I
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1590
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1591
    if-ltz v1, :cond_0

    .line 1592
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1593
    .local v2, "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    if-nez v2, :cond_1

    .line 1594
    return-void

    .line 1597
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1598
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1599
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback 3gpp message with reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1602
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1605
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v4, :cond_3

    .line 1606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1607
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1610
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 1611
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v4, 0x0

    .line 1612
    .local v4, "phoneId":I
    if-eqz v3, :cond_4

    .line 1613
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    .line 1615
    :cond_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v7

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v8

    .line 1616
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v10

    .line 1617
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v11

    .line 1615
    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1619
    .end local v2    # "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v4    # "phoneId":I
    :cond_5
    goto/16 :goto_0

    .line 1589
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "pending":I
    :cond_6
    goto :goto_1

    .line 1621
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    const-string v1, "application/vnd.3gpp2.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1622
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 1623
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1624
    .local v0, "saveMsgId":I
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1626
    const/4 v1, 0x0

    .line 1627
    .local v1, "phoneId":I
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback 3gpp2 message with reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/16 v5, 0x320

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v6, "application/vnd.3gpp2.sms"

    move-object v2, p0

    move v3, v1

    move v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    goto :goto_2

    .line 1621
    .end local v0    # "saveMsgId":I
    .end local v1    # "phoneId":I
    :cond_8
    :goto_1
    nop

    .line 1631
    :cond_9
    :goto_2
    return-void
.end method

.method private handleEmergencyRegisterDone(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 4
    .param p1, "sms"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEmergencyRegisterDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v0

    .line 1153
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 1154
    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 1155
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1157
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySms(I)V

    goto :goto_0

    .line 1159
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleEmergencyRegisterDone: Emergency Regi failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1163
    :cond_1
    :goto_0
    return-void
.end method

.method private handleEmergencyRegisterFail(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 3
    .param p1, "sms"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1166
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEmergencyRegisterFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v0

    .line 1168
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 1169
    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1170
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->failPendingEmergencySms(I)V

    .line 1172
    :cond_0
    return-void
.end method

.method private handleMOReceivingCallID(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z
    .locals 18
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p2, "pendingMessage"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p3, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "phoneId"    # I
    .param p5, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1048
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/4 v11, 0x1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 1050
    return v11

    .line 1052
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x12c

    if-lt v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 1053
    const/16 v0, 0x66

    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1054
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-boolean v1, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v1, :cond_2

    .line 1055
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1056
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_1
    sget v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    int-to-long v2, v2

    .line 1055
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1058
    :cond_2
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return v11

    .line 1061
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    if-lt v0, v2, :cond_8

    if-eqz v10, :cond_8

    .line 1062
    iget-object v12, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v13, "1"

    move/from16 v17, p4

    invoke-static/range {v12 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, "doInitialRegi":Z
    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    move-object/from16 v12, p5

    if-ne v12, v0, :cond_6

    .line 1065
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v2, 0x1f8

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/3gpp-ims+xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1067
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;

    move-result-object v0

    .line 1068
    .local v0, "svc":Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;
    const-string/jumbo v2, "restoration"

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "initial-registration"

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    .line 1069
    const/4 v1, 0x1

    .line 1073
    .end local v0    # "svc":Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;
    :cond_4
    move v0, v1

    goto :goto_2

    .line 1071
    :catch_0
    move-exception v0

    .line 1073
    goto :goto_1

    .line 1074
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v2, 0x198

    if-ne v0, v2, :cond_6

    .line 1075
    const/4 v1, 0x1

    move v0, v1

    goto :goto_2

    .line 1078
    :cond_6
    :goto_1
    move v0, v1

    .end local v1    # "doInitialRegi":Z
    .local v0, "doInitialRegi":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    const-string v2, "initial_registration"

    invoke-static {v10, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    goto :goto_3

    .line 1081
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    .line 1083
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceiveSipResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    .line 1085
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v7

    .line 1084
    move-object/from16 v1, p0

    move/from16 v2, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1086
    return v11

    .line 1061
    .end local v0    # "doInitialRegi":Z
    :cond_8
    move/from16 v13, p4

    move-object/from16 v12, p5

    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method private handleMTReceivingDeliverReportAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;I)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p2, "pendingMessage"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p3, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "phoneId"    # I

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    if-eqz p3, :cond_2

    .line 1096
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v0

    if-lez v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1099
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1103
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    .line 1106
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveSipResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1109
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v0, :cond_4

    .line 1111
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    .line 1113
    add-int/lit8 v1, v1, -0x1

    .line 1115
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/sms/ISmsServiceEventListener;

    .line 1116
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v5

    .line 1115
    invoke-interface {v2, v3, v4, v5}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSDeliveryReportAck(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1117
    :catch_0
    move-exception v2

    .line 1118
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1112
    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 1124
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1121
    :catch_1
    move-exception v1

    .line 1122
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1125
    goto :goto_4

    .line 1124
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1125
    throw v1

    .line 1128
    .end local v0    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    :cond_4
    :goto_4
    return-void
.end method

.method private handleRRCConnection(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;)V
    .locals 3
    .param p1, "rrcEvent"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    .line 498
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rrcEvent.getEvent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 501
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    .line 502
    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-ne v1, v2, :cond_3

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 507
    return-void

    .line 509
    :cond_2
    const/16 v1, 0x320

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->fallbackForSpecificReason(I)V

    .line 511
    :cond_3
    return-void
.end method

.method private handleSmsEvent(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 483
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmsEvent coming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 492
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveNotiInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 487
    goto :goto_0

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveOtherInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 490
    nop

    .line 495
    :goto_0
    return-void
.end method

.method private isRegistered(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1531
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private make3gpp2SMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .locals 17
    .param p1, "sendMessage"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p2, "pdu"    # [B
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I
    .param p6, "msgId"    # I
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1374
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    const-string v1, "0"

    const/4 v13, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-ne v10, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move-object/from16 v14, p3

    move-object/from16 v15, p8

    :try_start_1
    invoke-static {v15, v14, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1380
    nop

    .line 1382
    invoke-virtual/range {p1 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1383
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v10, v0, :cond_1

    move-object/from16 v7, p2

    array-length v0, v7

    const/16 v2, 0x100

    if-le v0, v2, :cond_2

    .line 1385
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "SSM_sendSMSOverIMS_overSize"

    invoke-static {v0, v1, v2, v3, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1386
    return-object v13

    .line 1383
    :cond_1
    move-object/from16 v7, p2

    .line 1389
    :cond_2
    invoke-virtual {v9, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1390
    iput v12, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1392
    return-object v9

    .line 1375
    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p8

    .line 1376
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1377
    iget-object v3, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v4, "SSM_sendSMSOverIMS_AddrErr"

    invoke-static {v3, v1, v4, v2, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1378
    const/16 v4, 0x2711

    const/4 v6, 0x0

    const/16 v16, -0x1

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v5, p7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    .line 1379
    return-object v13
.end method

.method private make3gppSMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .locals 18
    .param p1, "sendMessage"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p2, "pdu"    # [B
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I
    .param p6, "msgId"    # I
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p9, "isSMMA"    # Z

    .line 1319
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p8

    move/from16 v15, p9

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIncreasedRPRef()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRpRef(I)V

    .line 1321
    invoke-static {v15, v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getScaForRpDa(Z[BLjava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v6

    .line 1322
    .local v6, "scaForRpDa":Ljava/lang/String;
    const-string v0, "noSCA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v16, 0x0

    const-string v5, "0"

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "SSM_sendSMSOverIMS_emptySCA"

    invoke-static {v0, v5, v1, v4, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1324
    const/16 v3, 0x2711

    const/4 v5, 0x0

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v4, p7

    move-object v13, v6

    .end local v6    # "scaForRpDa":Ljava/lang/String;
    .local v13, "scaForRpDa":Ljava/lang/String;
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    .line 1325
    return-object v16

    .line 1328
    .end local v13    # "scaForRpDa":Ljava/lang/String;
    .restart local v6    # "scaForRpDa":Ljava/lang/String;
    :cond_0
    move-object v13, v6

    .end local v6    # "scaForRpDa":Ljava/lang/String;
    .restart local v13    # "scaForRpDa":Ljava/lang/String;
    invoke-static {v13, v10, v11, v14}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getSca(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v6

    .line 1329
    .local v6, "sca":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 1330
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_1

    move-object v0, v13

    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 1331
    .end local v13    # "scaForRpDa":Ljava/lang/String;
    .local v0, "scaForRpDa":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v1

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->removeSipPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v9, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppPduFromTpdu([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    move-object v13, v0

    goto :goto_1

    .line 1333
    .end local v0    # "scaForRpDa":Ljava/lang/String;
    .restart local v13    # "scaForRpDa":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRpSMMAPdu(I)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1336
    :goto_1
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v1, v6

    move-object/from16 v2, p4

    move-object/from16 v17, v6

    move v6, v4

    .end local v6    # "sca":Ljava/lang/String;
    .local v17, "sca":Ljava/lang/String;
    move/from16 v4, p5

    move-object v6, v5

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getScaFromPsismscPSI(Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Landroid/telephony/TelephonyManager;ILcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .end local v17    # "sca":Ljava/lang/String;
    .local v0, "sca":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v11, v1, :cond_3

    const-string v1, "noPSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1338
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "SSM_sendSMSOverIMS_LguNoPSI"

    const/4 v3, 0x1

    invoke-static {v1, v6, v2, v3, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1339
    return-object v16

    .line 1342
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v11, v1, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1344
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    .line 1347
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v11, v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v11, v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v11, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v14, v0, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 1348
    if-nez v15, :cond_8

    .line 1349
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1350
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPMRFromPdu([B)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    move/from16 v1, p6

    goto :goto_4

    .line 1352
    :cond_8
    move/from16 v1, p6

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1353
    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    .line 1356
    :goto_4
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1357
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "send message already pending"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1359
    :cond_9
    const/16 v2, 0x64

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1361
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_a

    .line 1362
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1364
    :cond_a
    iget-object v2, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    :goto_5
    return-object v8
.end method

.method private onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 678
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 679
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    .line 680
    .local v1, "phoneId":I
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 684
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "1"

    if-nez v2, :cond_1

    .line 685
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v5, "SSM_onReceive3GPP2IncomingSms_WrongFormat"

    invoke-static {v2, v4, v5, v3, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 686
    return-void

    .line 689
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->isValid3GPP2PDU([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 691
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v5, "SSM_onReceive3GPP2IncomingSms_InvalidPdu"

    invoke-static {v2, v4, v5, v3, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 692
    return-void

    .line 697
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive3GPP2IncomingSms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReceive3GPP2IncomingSms"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const v2, 0x50000004

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 700
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendDailyReport(Landroid/content/Context;I)V

    .line 701
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 702
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 703
    .local v2, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v2, :cond_4

    .line 705
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_3

    .line 707
    add-int/lit8 v3, v3, -0x1

    .line 709
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/sms/ISmsServiceEventListener;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveIncomingSMS(ILjava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 710
    :catch_0
    move-exception v4

    .line 711
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 712
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 706
    .end local v3    # "i":I
    :cond_3
    goto :goto_2

    .line 717
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 714
    :catch_1
    move-exception v3

    .line 715
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 717
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 718
    goto :goto_4

    .line 717
    :goto_3
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 718
    throw v3

    .line 721
    .end local v2    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    :cond_4
    :goto_4
    return-void
.end method

.method private onReceive3GPP2SmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 17
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 956
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v14

    .line 958
    .local v14, "reasonCode":I
    const/4 v15, 0x1

    const/16 v0, 0x64

    if-ne v14, v0, :cond_0

    .line 960
    return v15

    .line 963
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v16

    .line 964
    .local v16, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v0, 0x0

    .line 965
    .local v0, "phoneId":I
    if-eqz v16, :cond_1

    .line 966
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 965
    :cond_1
    move v6, v0

    .line 968
    .end local v0    # "phoneId":I
    .local v6, "phoneId":I
    :goto_0
    iget v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    if-gez v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    :cond_2
    move v2, v0

    .line 969
    .local v2, "saveMsgId":I
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v9, "1"

    move v10, v14

    move v13, v6

    invoke-static/range {v8 .. v13}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive3GPP2SmsAck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v6

    move v3, v14

    move v9, v6

    .end local v6    # "phoneId":I
    .local v9, "phoneId":I
    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 972
    return v15
.end method

.method private onReceive3GPPIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 18
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 579
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 580
    .local v2, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v0, 0x0

    .line 581
    .local v0, "phoneId":I
    if-eqz v2, :cond_0

    .line 582
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 581
    :cond_0
    move v3, v0

    .line 585
    .end local v0    # "phoneId":I
    .local v3, "phoneId":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    const-string v4, "1"

    const/4 v5, 0x1

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 590
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v6

    .line 591
    .local v6, "tPdu":[B
    const/4 v0, 0x0

    if-nez v6, :cond_4

    .line 592
    sget-object v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incoming tpdu is null. send RP Error report"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] SmscAddr ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v8, "SSM_onReceive3GPPIncomingSms_tPduNull"

    invoke-static {v7, v4, v8, v5, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->trimSipAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, "trimSmscAddr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->makeRPErrorPdu([B)[B

    move-result-object v17

    .line 597
    .local v17, "deliverPdu":[B
    if-nez v17, :cond_2

    .line 599
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v8, "SSM_onReceive3GPPIncomingSms_deliverPduNull"

    invoke-static {v0, v4, v8, v5, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 600
    return-void

    .line 602
    :cond_2
    const-string v4, "application/vnd.3gpp.sms"

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 603
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    :cond_3
    move/from16 v16, v0

    .line 603
    const-string v11, "application/vnd.3gpp.sms"

    move-object v9, v7

    move-object/from16 v12, v17

    invoke-interface/range {v8 .. v16}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V

    .line 605
    return-void

    .line 608
    .end local v7    # "trimSmscAddr":Ljava/lang/String;
    .end local v17    # "deliverPdu":[B
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v7

    array-length v7, v7

    if-gt v7, v5, :cond_5

    .line 609
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v7, "SSM_onReceive3GPPIncomingSms_DataError"

    invoke-static {v0, v4, v7, v5, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 610
    return-void

    .line 613
    :cond_5
    new-instance v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 614
    .local v4, "incomingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v7

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRpRef(I)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->removeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->trimSipAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 621
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 622
    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isStatusReport([B)Z

    move-result v7

    const-wide/32 v8, 0x2bf20

    if-ne v7, v5, :cond_6

    .line 624
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 625
    const/16 v0, 0x68

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 627
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 628
    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 632
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 633
    const/16 v7, 0x67

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 635
    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPPidDcsFromPdu([B)[B

    move-result-object v7

    .line 636
    .local v7, "tpPidDcs":[B
    if-eqz v7, :cond_7

    .line 637
    aget-byte v0, v7, v0

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpPid(I)V

    .line 638
    aget-byte v0, v7, v5

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpDcs(I)V

    .line 639
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming SMS new setMessageID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " TpPid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " TpDcs : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpDcs()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 639
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_7
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 644
    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 647
    .end local v7    # "tpPidDcs":[B
    :cond_8
    :goto_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_9
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive3GPPIncomingSms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "onReceive3GPPIncomingSms"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const v0, 0x50000003

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 653
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendDailyReport(Landroid/content/Context;I)V

    .line 654
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 655
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/RemoteCallbackList;

    .line 656
    .local v5, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v5, :cond_b

    .line 658
    :try_start_0
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_a

    .line 660
    add-int/lit8 v7, v0, -0x1

    .line 662
    .end local v0    # "i":I
    .local v7, "i":I
    :try_start_1
    invoke-virtual {v5, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v8

    .line 663
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v10

    .line 662
    invoke-interface {v0, v8, v9, v10}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveIncomingSMS(ILjava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    nop

    .line 659
    move v0, v7

    goto :goto_2

    .end local v7    # "i":I
    :cond_a
    goto :goto_4

    .line 671
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 668
    :catch_1
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 672
    goto :goto_6

    .line 671
    :goto_5
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 672
    throw v0

    .line 675
    .end local v5    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    :cond_b
    :goto_6
    return-void

    .line 586
    .end local v4    # "incomingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v6    # "tPdu":[B
    :cond_c
    :goto_7
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v6, "SSM_onReceive3GPPIncomingSms_WrongFormat"

    invoke-static {v0, v4, v6, v5, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 587
    return-void
.end method

.method private onReceive3GPPSmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 17
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 890
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    .line 891
    .local v9, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v0, 0x0

    .line 892
    .local v0, "phoneId":I
    if-eqz v9, :cond_0

    .line 893
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    move v10, v0

    goto :goto_0

    .line 892
    :cond_0
    move v10, v0

    .line 896
    .end local v0    # "phoneId":I
    .local v10, "phoneId":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_9

    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    const/4 v1, -0x1

    .line 899
    .local v1, "pending":I
    const/4 v2, -0x1

    .line 901
    .local v2, "pendingState":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 902
    iget-object v3, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I

    move-result v1

    .line 903
    iget-object v3, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-object v11, v0

    move v12, v1

    goto :goto_1

    .line 901
    :cond_1
    move-object v11, v0

    move v12, v1

    .line 906
    .end local v0    # "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v1    # "pending":I
    .local v11, "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .local v12, "pending":I
    :goto_1
    if-nez v11, :cond_2

    .line 907
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "unexpected SUBMIT report - pendingMessage is null"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return v7

    .line 911
    :cond_2
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v13

    .line 912
    .end local v2    # "pendingState":I
    .local v13, "pendingState":I
    const/16 v0, 0x64

    if-lt v13, v0, :cond_8

    const/16 v0, 0x66

    if-le v13, v0, :cond_3

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 918
    :cond_3
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    if-eqz v0, :cond_4

    .line 919
    invoke-virtual {v0, v14, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 920
    iget-boolean v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v0, :cond_4

    .line 921
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 925
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 926
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 929
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppRPError(Ljava/lang/String;[B)I

    move-result v15

    .line 930
    .local v15, "errCode":I
    if-lez v15, :cond_5

    .line 931
    iget-object v1, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v0, v14, [Ljava/lang/Object;

    int-to-byte v2, v15

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "%02X"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string v2, "2"

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 932
    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRilRPErrCode(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    goto :goto_2

    .line 934
    :cond_5
    iget-object v1, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v2, "0"

    const-string v4, "00"

    move v6, v10

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 935
    invoke-virtual {v11, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 938
    :goto_2
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive3GPPSmsAck: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const v0, 0x50000005

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 940
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAck(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 941
    iget-object v7, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v7

    .line 942
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive3GPPSmsAck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v3

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    .line 944
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    move-object/from16 v1, p0

    move v2, v10

    move-object/from16 v16, v7

    move v7, v0

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 945
    monitor-exit v16

    .line 946
    return v14

    .line 945
    :catchall_0
    move-exception v0

    move-object/from16 v16, v7

    :goto_3
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 948
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v0

    if-nez v0, :cond_7

    .line 949
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    goto :goto_5

    .line 948
    :cond_7
    move-object/from16 v1, p1

    goto :goto_5

    .line 912
    .end local v15    # "errCode":I
    :cond_8
    move-object/from16 v1, p1

    .line 913
    :goto_4
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected SUBMIT report - pendingState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, v8, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    return v7

    .line 896
    .end local v11    # "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v12    # "pending":I
    .end local v13    # "pendingState":I
    :cond_9
    move-object/from16 v1, p1

    .line 952
    :goto_5
    return v7
.end method

.method private onReceive3GPPSmsRpError(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 9
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 848
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 849
    .local v0, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    .line 850
    .local v1, "phoneId":I
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 854
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 855
    const/4 v2, 0x0

    .line 856
    .local v2, "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    const/4 v4, -0x1

    .line 858
    .local v4, "pending":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 859
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I

    move-result v4

    .line 860
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 863
    :cond_1
    if-nez v2, :cond_2

    .line 864
    sget-object v5, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "unexpected RP-ERROR"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v3

    .line 868
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive3GPPSmsRpError: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const v5, 0x50000006

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 870
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 871
    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 872
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v5, :cond_3

    .line 873
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 877
    :cond_3
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    if-ge v5, v6, :cond_5

    .line 878
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "retry to send message on RP-ERROR"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 880
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 882
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    return v6

    .line 886
    .end local v2    # "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v4    # "pending":I
    :cond_5
    return v3
.end method

.method private onReceiveAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;I)V
    .locals 18
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I
    .param p5, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p6, "errorCode"    # I

    .line 724
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p6

    const/4 v11, -0x1

    if-nez p5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v1, 0x198

    if-ne v0, v1, :cond_0

    .line 725
    iput v11, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 726
    iget-object v12, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v14, 0x198

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "3"

    move/from16 v17, p3

    invoke-static/range {v12 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 727
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x0

    .line 733
    .local v0, "result":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 735
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSipResponse(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v0

    move v12, v0

    goto :goto_1

    .line 736
    :cond_1
    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 738
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isRPErrorForRetransmission(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 739
    iget-object v12, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-byte v4, v10

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const-string v13, "2"

    move/from16 v17, p3

    invoke-static/range {v12 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 740
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPSmsRpError(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v0

    goto :goto_0

    .line 743
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPSmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v0

    goto :goto_0

    .line 745
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    const-string v1, "application/vnd.3gpp2.sms"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2SmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v0

    move v12, v0

    goto :goto_1

    .line 745
    :cond_4
    :goto_0
    move v12, v0

    .line 749
    .end local v0    # "result":Z
    .local v12, "result":Z
    :goto_1
    if-nez v12, :cond_6

    .line 751
    if-lez v10, :cond_5

    .line 752
    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRilRPErrCode(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 754
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 756
    const-string v0, "GATE"

    const-string v1, "<GATE-M>SMS_GENERIC_FAILURE</GATE-M>"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveAck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v3

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v6

    .line 761
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 763
    iput v11, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    goto :goto_2

    .line 749
    :cond_6
    move/from16 v13, p3

    .line 765
    :goto_2
    return-void
.end method

.method private onReceiveIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I
    .param p5, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 535
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v2, 0x0

    .line 536
    .local v2, "isLimitedRegi":Z
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    if-eqz p5, :cond_1

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p5, v0}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onReceiveIncomingSms: isLimitedRegi = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v2, 0x1

    .line 541
    :cond_0
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aget-boolean v3, v3, p3

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    aget-object v3, v3, p3

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 543
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    aget-object v5, v5, p3

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 544
    const-wide/32 v4, 0x493e0

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 549
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    const-string v3, "application/vnd.3gpp.sms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x194

    if-eqz v3, :cond_3

    .line 550
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 551
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v3

    .line 552
    .local v3, "tPdu":[B
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAdminMsg([B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 553
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p3, v6, v4}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    .line 554
    return-void

    .line 557
    .end local v3    # "tPdu":[B
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 558
    :cond_3
    const-string v3, "application/vnd.3gpp2.sms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    .line 559
    if-ne v2, v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_4

    .line 560
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->isAdminMsg([B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 561
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p3, v5, v4}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    .line 562
    return-void

    .line 565
    :cond_4
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    if-nez v3, :cond_5

    .line 566
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "incoming sms but mStorageAvailable = false"

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e0

    invoke-interface {v3, p3, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    .line 568
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 569
    return-void

    .line 571
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 573
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v4, "1"

    const-string v6, "SSM_onReceiveIncomingSms_noContentType"

    invoke-static {v3, v4, v6, v5, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 575
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-interface {v3, p3, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    .line 576
    return-void
.end method

.method private onReceiveNotiInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 976
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    .line 978
    .local v0, "messageId":I
    if-gez v0, :cond_0

    .line 980
    return-void

    .line 983
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 984
    .local v1, "pendingEvent":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    if-eqz v1, :cond_3

    .line 985
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    const/16 v3, 0x69

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 993
    :cond_1
    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 994
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 995
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    goto :goto_0

    .line 987
    :cond_2
    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 988
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    nop

    .line 1001
    :goto_0
    return-void

    .line 1003
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "no pending message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-void
.end method

.method private onReceiveOtherInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 17
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1007
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    .line 1008
    .local v0, "messageId":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 1010
    .local v8, "contentType":Ljava/lang/String;
    if-gez v0, :cond_0

    .line 1012
    return-void

    .line 1015
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    .line 1017
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cannot send message as NOTI_DEREGISTERED"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    .line 1020
    .local v9, "reg":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    .line 1021
    .local v1, "phoneId":I
    if-eqz v9, :cond_2

    .line 1022
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    move v6, v1

    goto :goto_0

    .line 1021
    :cond_2
    move v6, v1

    .line 1025
    .end local v1    # "phoneId":I
    .local v6, "phoneId":I
    :goto_0
    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1026
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1027
    .local v1, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    if-nez v1, :cond_3

    .line 1028
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "no pending message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void

    .line 1031
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "remove pending message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1033
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1034
    iput v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1035
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v0

    move/from16 v16, v0

    goto :goto_1

    .line 1025
    .end local v1    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :cond_4
    move/from16 v16, v0

    .line 1038
    .end local v0    # "messageId":I
    .local v16, "messageId":I
    :goto_1
    iget-object v10, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v12, 0x3e7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, "1"

    move v15, v6

    invoke-static/range {v10 .. v15}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveOtherInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v3, 0x3e7

    const/4 v5, 0x0

    const/4 v10, -0x1

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v16

    move-object v4, v8

    move v11, v6

    .end local v6    # "phoneId":I
    .local v11, "phoneId":I
    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1041
    move/from16 v0, v16

    .line 1045
    .end local v9    # "reg":Lcom/sec/ims/ImsRegistration;
    .end local v11    # "phoneId":I
    .end local v16    # "messageId":I
    .restart local v0    # "messageId":I
    :goto_2
    return-void
.end method

.method private onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "messageID"    # I
    .param p3, "reasonCode"    # I
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "data"    # [B
    .param p6, "retryAfter"    # I

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSMSAckInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1636
    return-void
.end method

.method private onReceiveSipResponse(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 20
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 768
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v9

    .line 769
    .local v9, "callId":Ljava/lang/String;
    const/4 v0, -0x1

    .line 770
    .local v0, "pending":I
    const/4 v10, 0x0

    .line 771
    .local v10, "result":Z
    const/4 v11, 0x0

    .line 773
    .local v11, "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v12

    .line 774
    .local v12, "regInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    .line 775
    .local v1, "phoneId":I
    if-eqz v12, :cond_0

    .line 776
    invoke-virtual {v12}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    move v6, v1

    goto :goto_0

    .line 775
    :cond_0
    move v6, v1

    .line 779
    .end local v1    # "phoneId":I
    .local v6, "phoneId":I
    :goto_0
    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v15

    .line 780
    .local v15, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v15}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    const/16 v2, 0x2c4

    if-ne v1, v2, :cond_1

    .line 782
    const/16 v1, 0x198

    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 784
    :cond_1
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveSipResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const v1, 0x50000007    # 8.5899418E9f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 786
    if-eqz v9, :cond_2

    .line 787
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    goto :goto_1

    .line 786
    :cond_2
    move/from16 v19, v0

    .line 790
    .end local v0    # "pending":I
    .local v19, "pending":I
    :goto_1
    if-ltz v19, :cond_5

    .line 791
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 793
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_3

    .line 804
    const/4 v0, 0x0

    return v0

    .line 798
    :cond_3
    invoke-direct {v7, v8, v11, v12, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleMTReceivingDeliverReportAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;I)V

    .line 799
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v12

    move v4, v6

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleMOReceivingCallID(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0

    .line 807
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-nez v0, :cond_8

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveSipResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    .line 828
    .local v0, "code":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, "reason":Ljava/lang/String;
    iget-object v13, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v14, "1"

    move-object v4, v15

    .end local v15    # "mno":Lcom/sec/internal/constants/Mno;
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    move v15, v0

    move/from16 v18, v6

    invoke-static/range {v13 .. v18}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 830
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v1, :cond_6

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Outage"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 832
    const/16 v0, 0x309

    move v13, v0

    goto :goto_2

    .line 834
    :cond_6
    move v13, v0

    .end local v0    # "code":I
    .local v13, "code":I
    :goto_2
    iget v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    if-gez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    :cond_7
    move v2, v0

    .line 835
    .local v2, "saveMsgId":I
    const/4 v0, -0x1

    iput v0, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 836
    const/4 v14, 0x0

    const/4 v15, -0x1

    const-string v16, "application/vnd.3gpp2.sms"

    move-object/from16 v0, p0

    move v1, v6

    move v3, v13

    move-object/from16 v17, v4

    .end local v4    # "mno":Lcom/sec/internal/constants/Mno;
    .local v17, "mno":Lcom/sec/internal/constants/Mno;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "reason":Ljava/lang/String;
    .local v16, "reason":Ljava/lang/String;
    move-object v5, v14

    move v14, v6

    .end local v6    # "phoneId":I
    .local v14, "phoneId":I
    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 837
    const/4 v10, 0x1

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_9

    if-eqz v12, :cond_9

    .line 841
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    goto :goto_3

    .line 807
    .end local v2    # "saveMsgId":I
    .end local v13    # "code":I
    .end local v14    # "phoneId":I
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v6    # "phoneId":I
    .restart local v15    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_8
    move v14, v6

    move-object/from16 v17, v15

    .line 844
    .end local v6    # "phoneId":I
    .end local v15    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v14    # "phoneId":I
    .restart local v17    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_9
    :goto_3
    return v10
.end method

.method private onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 514
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 515
    .local v7, "contentType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppRPError(Ljava/lang/String;[B)I

    move-result v8

    .line 516
    .local v8, "errorCode":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    .line 517
    .local v9, "regInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v0, 0x0

    .line 518
    .local v0, "phoneId":I
    const/4 v1, -0x1

    .line 519
    .local v1, "subId":I
    if-eqz v9, :cond_0

    .line 520
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 521
    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    move v10, v0

    move v11, v1

    goto :goto_0

    .line 519
    :cond_0
    move v10, v0

    move v11, v1

    .line 524
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    .local v10, "phoneId":I
    .local v11, "subId":I
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSmsMessage: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-gtz v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v7, v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAck(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v3, v10

    move v4, v11

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;)V

    goto :goto_1

    .line 528
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v3, v10

    move v4, v11

    move-object v5, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;I)V

    .line 530
    :goto_1
    return-void
.end method

.method private retryToSendMessage(ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "sendMessage"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1564
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "retry to send message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    const/16 v0, 0x3e7

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1567
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1568
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 1569
    return-void

    .line 1571
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    .line 1572
    .local v0, "pdu":[B
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->set3gppTPRD([B)V

    .line 1573
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v3

    .line 1575
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v8

    .line 1576
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v9, v5

    .line 1574
    move-object v5, v0

    invoke-interface/range {v1 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V

    .line 1577
    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1578
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1579
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1581
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    .line 1583
    return-void
.end method

.method private sendPendingEmergencySms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1131
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPendingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1133
    .local v0, "tempQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1134
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1137
    :cond_0
    return-void
.end method

.method private vzwSendSmsDestAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 1429
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const-string v0, "0111"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isNanp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "6.5.2b is applied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1435
    :cond_0
    return-object p1
.end method

.method private vzwSendSmsE911(Ljava/lang/String;II[BLcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;)I
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "msgId"    # I
    .param p4, "pdu"    # [B
    .param p5, "sendMessage"    # Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .param p6, "eRegInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1406
    const-string v0, "911"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 1407
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSMSOverIMS: isVzwE911 = true, mEmergencyRegiProcessiong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 1409
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendSMSOverIMS: regInfo = eRegInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return v0

    .line 1412
    :cond_0
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 1413
    invoke-virtual {p5, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1414
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1415
    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 1416
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1417
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v1, p2

    if-nez v2, :cond_1

    .line 1418
    aput-boolean v0, v1, p2

    .line 1419
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1420
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1422
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1425
    :cond_2
    return v1
.end method

.method private vzwSendSmsLimitedRegi(IIILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Z
    .locals 10
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I
    .param p3, "msgId"    # I
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "imsi":Ljava/lang/String;
    if-eqz p5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p5, v0}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Limited Regi Mode, fallback to 1xRTT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/16 v6, 0x2714

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    .line 1400
    const/4 v1, 0x1

    return v1

    .line 1402
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterForSMSStateChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1191
    .local v0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1195
    .end local v0    # "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 5

    .line 1739
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1742
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIncommingMagId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIncommingMagId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRPMsgRef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getRPMsgRef()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m3GPP2SendingMsgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastMOContentType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetransCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mPendingQueue :"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1752
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    goto :goto_0

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->dump()V

    .line 1757
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1758
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1759
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 304
    const-string/jumbo v0, "smsip"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsFallback(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 1525
    const-string v0, "enable_default_sms_fallback"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1526
    .local v0, "smsFallback":Z
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsFallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1527
    return v0
.end method

.method public handleEventDefaultAppChanged()V
    .locals 4

    .line 1199
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEventDefaultAppChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1201
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1202
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "defaultmsgappinuse"

    invoke-static {v1, v2, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    .line 1203
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : MessageApplication is changed. mIsSamsungMsgApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSamsungMsgAppVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    if-eqz v1, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    goto :goto_2

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    .line 1200
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    .end local v0    # "phoneId":I
    :cond_3
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 431
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 435
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 438
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 470
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 471
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 472
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 473
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    .line 475
    goto :goto_0

    .line 466
    .end local v0    # "phoneId":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencyRegisterFail(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 467
    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencyRegisterDone(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 463
    goto :goto_0

    .line 456
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 457
    .local v0, "sms":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x5

    .line 458
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 457
    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->startEmergencyRegistration(ILandroid/os/Message;)V

    .line 459
    goto :goto_0

    .line 451
    .end local v0    # "sms":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 452
    .restart local v0    # "sms":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 453
    goto :goto_0

    .line 446
    .end local v0    # "sms":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 447
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleRRCConnection(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;)V

    .line 448
    goto :goto_0

    .line 441
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 442
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleSmsEvent(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 443
    nop

    .line 480
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .line 311
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 312
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const/4 v3, 0x2

    invoke-interface {v0, p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 317
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "defaultmsgappinuse"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    .line 322
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    .line 384
    return-void
.end method

.method public isSmsOverIpEnabled(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1664
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1666
    .local v0, "regInfo":Lcom/sec/ims/ImsRegistration;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "regInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1672
    :cond_0
    const-string/jumbo v2, "smsip"

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1673
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 1674
    return v4

    .line 1675
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->disallowReregistration(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1676
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isServiceAvailable(Landroid/telephony/TelephonyManager;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1677
    return v4

    .line 1679
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_3

    .line 1680
    return v1

    .line 1682
    :cond_3
    return v4

    .line 1686
    :cond_4
    return v1

    .line 1668
    :cond_5
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disallow sms Service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    return v1
.end method

.method public isVolteSupported(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1691
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1692
    .local v0, "regInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    .line 1693
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsVolteSupported= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mmtel"

    invoke-virtual {v0, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual {v0, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1696
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onConfigured(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 388
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConfigured:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 391
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 392
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const/16 v1, 0x4e20

    sput v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    goto :goto_0

    .line 395
    :cond_0
    const v1, 0x9c40

    sput v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    .line 397
    :goto_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 418
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deregistered from SMS service. reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 421
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 422
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 423
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->BSNL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 424
    const/16 v2, 0x3e7

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->fallbackForSpecificReason(I)V

    .line 426
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 427
    return-void
.end method

.method public onMessagingAppPackageReplaced()V
    .locals 1

    .line 1541
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->post(Ljava/lang/Runnable;)Z

    .line 1561
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 406
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 407
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered to SMS service. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 409
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsSamsungMsgApp:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSamsungMsgAppVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    .line 414
    :goto_0
    return-void
.end method

.method public onSimReady(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mDefaultPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastDcnNumber(Landroid/content/Context;I)V

    .line 402
    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 5
    .param p1, "phoneId"    # I

    .line 1714
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1715
    .local v0, "capabilities":Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isSmsOverIpEnabled(I)Z

    move-result v1

    const/16 v2, 0x8

    const-string v3, "Sms Service queryCapabilityStatus["

    if-eqz v1, :cond_0

    .line 1716
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: addCapabilities CAPABILITY_TYPE_SMS"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    goto :goto_0

    .line 1719
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: removeCapabilities CAPABILITY_TYPE_SMS"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 1723
    :goto_0
    return-object v0
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSMSStateChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1181
    .local v0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v0, :cond_1

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "registerForSMSStateChange register"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1185
    :cond_1
    return-void
.end method

.method public sendDeliverReport(I[B)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "data"    # [B

    .line 1444
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v3, :cond_b

    array-length v0, v3

    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    goto/16 :goto_8

    .line 1449
    :cond_0
    const/4 v0, 0x2

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    .line 1450
    .local v4, "msgId":I
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1451
    .local v14, "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    if-eqz v14, :cond_a

    .line 1452
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1453
    invoke-virtual {v5, v6, v14}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1460
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v15

    .line 1461
    .local v15, "regInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v5, -0x1

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v7

    if-nez v7, :cond_2

    goto/16 :goto_2

    .line 1488
    :cond_2
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v7

    if-eq v7, v5, :cond_6

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 1493
    :cond_3
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpPid()I

    move-result v5

    .line 1494
    .local v5, "tpPid":I
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpDcs()I

    move-result v7

    .line 1497
    .local v7, "tpDcs":I
    and-int/lit8 v8, v5, 0x3f

    const/16 v9, 0x3f

    if-ne v8, v9, :cond_4

    and-int/lit8 v8, v7, 0x2

    if-ne v8, v0, :cond_4

    .line 1499
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "sendDeliverReport() set TP-PID and TP-DCS"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    move v13, v7

    goto :goto_0

    .line 1501
    :cond_4
    const/4 v5, 0x0

    .line 1502
    const/4 v7, 0x0

    .line 1503
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "sendDeliverReport() do not set TP-PID and TP-DCS"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    move v13, v7

    .line 1506
    .end local v5    # "tpPid":I
    .end local v7    # "tpDcs":I
    .local v0, "tpPid":I
    .local v13, "tpDcs":I
    :goto_0
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v5

    invoke-static {v2, v5, v3, v0, v13}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getDeliverReportFromPdu(II[BII)[B

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1507
    const/16 v5, 0x69

    invoke-virtual {v14, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1508
    invoke-virtual {v14, v15}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1509
    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setLocalUri(Ljava/lang/String;)V

    .line 1511
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v5, :cond_5

    .line 1512
    invoke-virtual {v5, v6, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x2bf20

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1514
    :cond_5
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDeliverReport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const v5, 0x50000002    # 8.5899366E9f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1518
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 1519
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v16

    .line 1518
    move v12, v4

    move/from16 v17, v13

    .end local v13    # "tpDcs":I
    .local v17, "tpDcs":I
    move/from16 v13, v16

    invoke-interface/range {v5 .. v13}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V

    .line 1520
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 1521
    return-void

    .line 1489
    .end local v0    # "tpPid":I
    .end local v17    # "tpDcs":I
    :cond_6
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "sendDeliverReport wrong format"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void

    .line 1462
    :cond_7
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendDeliverReport() called. but not registered IMS"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendDeliverReport: msgId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1466
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/RemoteCallbackList;

    .line 1467
    .local v6, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    if-eqz v6, :cond_9

    .line 1469
    :try_start_0
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    .local v0, "i":I
    :goto_3
    if-lez v0, :cond_8

    .line 1471
    add-int/lit8 v7, v0, -0x1

    .line 1473
    .end local v0    # "i":I
    .local v7, "i":I
    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    const/16 v8, 0x3e7

    invoke-interface {v0, v4, v8, v5}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSDeliveryReportAck(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    nop

    .line 1470
    move v0, v7

    goto :goto_3

    .end local v7    # "i":I
    :cond_8
    goto :goto_5

    .line 1481
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 1478
    :catch_1
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1481
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_5
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1482
    goto :goto_7

    .line 1481
    :goto_6
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1482
    throw v0

    .line 1485
    .end local v6    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/sms/ISmsServiceEventListener;>;"
    :cond_9
    :goto_7
    return-void

    .line 1456
    .end local v15    # "regInfo":Lcom/sec/ims/ImsRegistration;
    :cond_a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "sendDeliverReport no incoming Message to send DeliverReport!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    return-void

    .line 1446
    .end local v4    # "msgId":I
    .end local v14    # "pendingMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :cond_b
    :goto_8
    return-void
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 35
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "msgId"    # I
    .param p6, "isSMMA"    # Z

    .line 1217
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v7, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v8

    .line 1218
    .local v8, "regInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v14, 0x1

    invoke-virtual {v10, v11, v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v15

    .line 1219
    .local v15, "eRegInfo":Lcom/sec/ims/ImsRegistration;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 1220
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    const/16 v16, 0x0

    .line 1222
    .local v16, "isVzwE911":I
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    const-string v1, " destAddr="

    const-string/jumbo v6, "sendSMSOverIMS: "

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 1223
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1225
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    const/4 v0, -0x1

    .line 1229
    .local v0, "subId":I
    if-eqz v8, :cond_1

    .line 1230
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v0

    move/from16 v17, v0

    goto :goto_1

    .line 1229
    :cond_1
    move/from16 v17, v0

    .line 1233
    .end local v0    # "subId":I
    .local v17, "subId":I
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    move-object v4, v0

    .line 1234
    .local v4, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 1236
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v0, :cond_5

    .line 1237
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v18, v4

    .end local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .local v18, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    move-object/from16 v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsLimitedRegi(IIILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1238
    return-void

    .line 1240
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v20, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsE911(Ljava/lang/String;II[BLcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    .line 1241
    .end local v16    # "isVzwE911":I
    .local v0, "isVzwE911":I
    if-ne v0, v14, :cond_3

    .line 1242
    move-object v1, v15

    move-object v8, v1

    .end local v8    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .local v1, "regInfo":Lcom/sec/ims/ImsRegistration;
    goto :goto_2

    .line 1243
    .end local v1    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v8    # "regInfo":Lcom/sec/ims/ImsRegistration;
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1244
    return-void

    .line 1246
    :cond_4
    :goto_2
    invoke-direct {v10, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsDestAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v6, v0

    move-object v7, v8

    move-object v8, v1

    .end local p3    # "destAddr":Ljava/lang/String;
    .local v1, "destAddr":Ljava/lang/String;
    goto :goto_3

    .line 1236
    .end local v0    # "isVzwE911":I
    .end local v1    # "destAddr":Ljava/lang/String;
    .end local v18    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v16    # "isVzwE911":I
    .restart local p3    # "destAddr":Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    .end local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v18    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    move/from16 v6, v16

    move-object/from16 v34, v8

    move-object v8, v7

    move-object/from16 v7, v34

    .line 1250
    .end local v16    # "isVzwE911":I
    .end local p3    # "destAddr":Ljava/lang/String;
    .local v6, "isVzwE911":I
    .local v7, "regInfo":Lcom/sec/ims/ImsRegistration;
    .local v8, "destAddr":Ljava/lang/String;
    :goto_3
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isProhibited(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    const-string v5, "SSM_sendSMSOverIMS_notRegi"

    const-string v4, "0"

    if-nez v0, :cond_e

    if-nez v7, :cond_6

    move-object v14, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v21, v15

    move-object/from16 v16, v18

    move-object v15, v5

    move v9, v6

    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1269
    :cond_6
    move-object/from16 v3, v18

    .end local v18    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .local v3, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1270
    if-eqz v8, :cond_8

    .line 1271
    const-string v0, "application/vnd.3gpp.sms"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1272
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    move-object/from16 v16, v3

    .end local v3    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .local v16, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    move-object v3, v8

    move-object v14, v4

    move-object v4, v9

    move-object/from16 v21, v15

    move-object v15, v5

    .end local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .local v21, "eRegInfo":Lcom/sec/ims/ImsRegistration;
    move/from16 v5, p1

    move/from16 v22, v6

    .end local v6    # "isVzwE911":I
    .local v22, "isVzwE911":I
    move/from16 v6, p5

    move-object/from16 v23, v7

    .end local v7    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .local v23, "regInfo":Lcom/sec/ims/ImsRegistration;
    move-object/from16 v7, p4

    move-object/from16 p3, v8

    .end local v8    # "destAddr":Ljava/lang/String;
    .restart local p3    # "destAddr":Ljava/lang/String;
    move-object/from16 v8, v23

    move-object/from16 v24, v9

    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .local v24, "mno":Lcom/sec/internal/constants/Mno;
    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->make3gppSMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object v4

    move-object v7, v4

    .end local v16    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    goto :goto_4

    .line 1273
    .end local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v21    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .end local v22    # "isVzwE911":I
    .end local v23    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v24    # "mno":Lcom/sec/internal/constants/Mno;
    .end local p3    # "destAddr":Ljava/lang/String;
    .restart local v3    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v6    # "isVzwE911":I
    .restart local v7    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v8    # "destAddr":Ljava/lang/String;
    .restart local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    :cond_7
    move-object/from16 v16, v3

    move-object v14, v4

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 p3, v8

    move-object/from16 v24, v9

    move-object/from16 v21, v15

    move-object v15, v5

    .end local v3    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v6    # "isVzwE911":I
    .end local v7    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v8    # "destAddr":Ljava/lang/String;
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v16    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v21    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v22    # "isVzwE911":I
    .restart local v23    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v24    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local p3    # "destAddr":Ljava/lang/String;
    const-string v0, "application/vnd.3gpp2.sms"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1274
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v24

    move/from16 v5, p1

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->make3gpp2SMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object v4

    move-object v7, v4

    .end local v16    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    goto :goto_4

    .line 1270
    .end local v4    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v21    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .end local v22    # "isVzwE911":I
    .end local v23    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v24    # "mno":Lcom/sec/internal/constants/Mno;
    .end local p3    # "destAddr":Ljava/lang/String;
    .restart local v3    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v6    # "isVzwE911":I
    .restart local v7    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v8    # "destAddr":Ljava/lang/String;
    .restart local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    :cond_8
    move-object/from16 v16, v3

    move-object v14, v4

    move/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 p3, v8

    move-object/from16 v24, v9

    move-object/from16 v21, v15

    move-object v15, v5

    .line 1278
    .end local v3    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .end local v6    # "isVzwE911":I
    .end local v7    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v8    # "destAddr":Ljava/lang/String;
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v16    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v21    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v22    # "isVzwE911":I
    .restart local v23    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v24    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local p3    # "destAddr":Ljava/lang/String;
    :cond_9
    move-object/from16 v7, v16

    .end local v16    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .local v7, "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :goto_4
    if-nez v7, :cond_a

    .line 1279
    return-void

    .line 1282
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1284
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "1"

    move/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 1285
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v0, v14, v15, v6, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1286
    iput v13, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1287
    const/16 v3, 0x3e7

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1288
    return-void

    .line 1290
    :cond_b
    const/4 v6, 0x0

    invoke-static/range {v23 .. v23}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setLocalUri(Ljava/lang/String;)V

    .line 1293
    iput v6, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    .line 1294
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 1295
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v0, ""

    .line 1298
    .local v0, "da":Ljava/lang/String;
    move-object/from16 v8, p3

    .end local p3    # "destAddr":Ljava/lang/String;
    .restart local v8    # "destAddr":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 1299
    const-string v1, "(?<=.{2}).(?=.{2})"

    const-string v2, ""

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    :cond_c
    const v1, 0x50000001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1302
    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v28

    .line 1303
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v32

    invoke-virtual/range {v23 .. v23}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v33

    .line 1302
    move-object/from16 v25, v1

    invoke-interface/range {v25 .. v33}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V

    .line 1305
    move/from16 v9, v22

    const/4 v1, 0x1

    .end local v22    # "isVzwE911":I
    .local v9, "isVzwE911":I
    if-ne v9, v1, :cond_d

    .line 1306
    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    aget-object v1, v1, v11

    const/4 v2, 0x7

    invoke-virtual {v10, v2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1307
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIntForHandler:[Ljava/lang/Integer;

    aget-object v3, v3, v11

    invoke-virtual {v10, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 1308
    const-wide/32 v2, 0x493e0

    invoke-virtual {v10, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1309
    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aget-boolean v3, v2, v11

    if-nez v3, :cond_d

    .line 1310
    const/4 v3, 0x1

    aput-boolean v3, v2, v11

    .line 1311
    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    .line 1315
    .end local v1    # "msg":Landroid/os/Message;
    :cond_d
    return-void

    .line 1250
    .end local v0    # "da":Ljava/lang/String;
    .end local v21    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .end local v23    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v24    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v6    # "isVzwE911":I
    .local v7, "regInfo":Lcom/sec/ims/ImsRegistration;
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    .restart local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v18    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :cond_e
    move-object v14, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v21, v15

    move-object/from16 v16, v18

    move-object v15, v5

    move v9, v6

    const/4 v6, 0x0

    .line 1252
    .end local v6    # "isVzwE911":I
    .end local v7    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .end local v15    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .end local v18    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .local v9, "isVzwE911":I
    .restart local v16    # "sendMessage":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .restart local v21    # "eRegInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v23    # "regInfo":Lcom/sec/ims/ImsRegistration;
    .restart local v24    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_5
    const/16 v0, 0x3e7

    .line 1253
    .local v0, "mError":I
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v7

    .line 1254
    .local v7, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v7, :cond_f

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :goto_6
    move-object v5, v1

    .line 1255
    .local v5, "netMno":Lcom/sec/internal/constants/Mno;
    if-eqz v23, :cond_10

    invoke-virtual/range {v23 .. v23}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1256
    const/16 v0, 0x309

    .line 1258
    :cond_10
    const-string v1, "911"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v1, :cond_11

    .line 1259
    const/16 v0, 0x2712

    move/from16 v18, v0

    goto :goto_7

    .line 1261
    :cond_11
    move/from16 v18, v0

    .end local v0    # "mError":I
    .local v18, "mError":I
    :goto_7
    iput v13, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1262
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "1"

    move-object/from16 v19, v5

    .end local v5    # "netMno":Lcom/sec/internal/constants/Mno;
    .local v19, "netMno":Lcom/sec/internal/constants/Mno;
    move/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 1263
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v14, v15, v6, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1265
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, v18

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1266
    return-void
.end method

.method public sendSMSResponse(ZI)V
    .locals 0
    .param p1, "isSuccess"    # Z
    .param p2, "responseCode"    # I

    .line 1440
    return-void
.end method

.method public setDelayedDeregisterTimerRunning(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "deregiTimerRunning"    # Z

    .line 1728
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aput-boolean p2, v0, p1

    .line 1729
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 1730
    return-void
.end method

.method public updateCapabilities(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1701
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sms Service updateCapabilities ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1703
    .local v0, "capabilities":[I
    array-length v1, v0

    new-array v1, v1, [Z

    .line 1705
    .local v1, "capables":[Z
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1707
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isSmsOverIpEnabled(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 1709
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->updateCapabilities(I[I[Z)V

    .line 1710
    return-void
.end method
