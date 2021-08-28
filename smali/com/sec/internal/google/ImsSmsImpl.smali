.class public final Lcom/sec/internal/google/ImsSmsImpl;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;,
        Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;,
        Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;
    }
.end annotation


# static fields
.field private static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field private static final DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field private static final DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field private static final DELIVER_STATUS_OK:I = 0x1

.field private static final EVENT_SMS_DELIVER_REPORT_RETRY:I = 0x4

.field private static final EVENT_SMS_NO_RESPONSE_TIMEOUT:I = 0x2

.field private static final EVENT_SMS_RETRY:I = 0x1

.field private static final EVENT_SMS_SEND_DELAYED_MESSAGE:I = 0x3

.field private static final GSM_NETWORK_TYPE:I = 0x2

.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final LOG_TAG_HEAD:Ljava/lang/String; = "ImsSmsImpl"

.field private static final MAP_KEY_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field private static final MAP_KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field private static final MAP_KEY_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final MAP_KEY_STATUS_REPORT:Ljava/lang/String; = "statusReport"

.field private static final MAP_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final MAX_SEND_RETRIES_1:I = 0x1

.field private static final MAX_SEND_RETRIES_2:I = 0x2

.field private static final MAX_SEND_RETRIES_4:I = 0x4

.field public static final RESULT_NO_NETWORK_ERROR:I = -0x1

.field private static final RIL_CODE_RP_ERROR:I = 0x8000

.field private static final RIL_CODE_RP_ERROR_END:I = 0x80ff

.field private static final RP_CAUSE_CONGESTION:I = 0x2a

.field private static final RP_CAUSE_DESTINATION_OUT_OF_ORDER:I = 0x1b

.field private static final RP_CAUSE_MEMORY_CAP_EXCEEDED:I = 0x16

.field private static final RP_CAUSE_NETWORK_OUT_OF_ORDER:I = 0x26

.field private static final RP_CAUSE_NONE_ERROR:I = 0x0

.field private static final RP_CAUSE_NOT_COMPATIBLE_PROTOCOL:I = 0x62

.field private static final RP_CAUSE_PROTOCOL_ERROR:I = 0x6f

.field private static final RP_CAUSE_REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field private static final RP_CAUSE_RESOURCES_UNAVAILABLE:I = 0x2f

.field private static final RP_CAUSE_SMS_TRANSFER_REJECTED:I = 0x15

.field private static final RP_CAUSE_TEMPORARY_FAILURE:I = 0x29

.field private static final RP_CAUSE_UNIDENTIFIED_SUBSCRIBER:I = 0x1c

.field private static final RP_CAUSE_UNKNOWN_SUBSCRIBER:I = 0x1e

.field private static final SEND_RETRY_DELAY:I = 0x7530

.field private static final SEND_STATUS_ERROR:I = 0x2

.field private static final SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field private static final SEND_STATUS_ERROR_RETRY:I = 0x3

.field private static final SEND_STATUS_OK:I = 0x1

.field public static final STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final STATUS_REPORT_STATUS_OK:I = 0x1

.field private static final TIMER_STATE:I = 0x1fbd0

.field private static final TP_CAUSE_INVALID_SME_ADDRESS:I = 0xc3

.field private static final TP_CAUSE_SM_REJECTED_OR_DUPLICATE:I = 0xc5


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private final mDeliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mImsSmsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRetryCount:I

.field private mLastRxStatusMsgId:I

.field private mPhoneId:I

.field private mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

.field private mSmsEventListener:Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

.field private mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

.field private mTpmr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 44
    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    .line 45
    new-instance v2, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$1;)V

    iput-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

    .line 46
    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 72
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 163
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSmsImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    .line 167
    iput p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    .line 168
    iput-object p3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 169
    iput-object p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    .line 173
    if-eqz v0, :cond_1

    .line 175
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/internal/google/ImsSmsImpl;->registerSmsEventListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 182
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v0, Lcom/sec/internal/google/ImsSmsImpl$1;

    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/google/ImsSmsImpl$1;-><init>(Lcom/sec/internal/google/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/google/ImsSmsImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/internal/google/ImsSmsImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/google/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/google/ImsSmsImpl;->onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/google/ImsSmsImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->handleSendDelayedMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p1, "x1"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->handleSmsRetry(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/google/ImsSmsImpl;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p1, "x1"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->handleNoResponseTimeout(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/google/ImsSmsImpl;)Landroid/telephony/ims/aidl/IImsSmsListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/internal/google/ImsSmsImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/internal/google/ImsSmsImpl;IILjava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->handleStatusReport(IILjava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/google/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/google/ImsSmsImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsSmsImpl;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsSmsImpl;->getTokenByMessageId(I)I

    move-result v0

    return v0
.end method

.method private canFallback(I)Z
    .locals 11
    .param p1, "smsFormat"    # I

    .line 1255
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1256
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1257
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, "simOperator":Ljava/lang/String;
    iget v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1261
    .local v4, "iccType":I
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v5, "46000"

    .line 1262
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46002"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46007"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46008"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1263
    :cond_0
    return v7

    .line 1264
    :cond_1
    const/4 v5, 0x3

    new-array v8, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v9, v8, v0

    sget-object v9, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    aput-object v9, v8, v7

    sget-object v9, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v9, v8, v6

    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1265
    return v7

    .line 1266
    :cond_2
    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v8, :cond_5

    .line 1267
    iget v8, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const-string v9, "gsm.operator.isroaming"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1268
    .local v8, "isRoaming":Z
    iget v9, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->getVzwDeviceType(I)I

    move-result v9

    if-eq v9, v5, :cond_4

    if-eqz v8, :cond_3

    .line 1269
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    const/16 v9, 0xd

    if-ne v5, v9, :cond_3

    goto :goto_0

    .line 1272
    :cond_3
    iget v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getVzwDeviceType(I)I

    move-result v5

    if-ne v5, v6, :cond_6

    if-ne p1, v7, :cond_6

    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v6, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    .line 1273
    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->isVolteSupported(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1274
    return v0

    .line 1270
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "fallback always over NAS (cdmaless / volte roaming)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return v7

    .line 1276
    .end local v8    # "isRoaming":Z
    :cond_5
    sget-object v5, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_6

    .line 1277
    return v0

    .line 1276
    :cond_6
    nop

    .line 1280
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "serviceState.getState() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_7

    .line 1282
    return v7

    .line 1284
    :cond_7
    return v0

    .line 1286
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v3    # "simOperator":Ljava/lang/String;
    .end local v4    # "iccType":I
    :catch_0
    move-exception v1

    .line 1287
    .local v1, "ex":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No permission for telephony service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return v0
.end method

.method private canFallbackForTimeout()Z
    .locals 9

    .line 1294
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1295
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1296
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    .local v3, "simOperator":Ljava/lang/String;
    iget v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1300
    .local v4, "iccType":I
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v5, "46000"

    .line 1301
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46002"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46007"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46008"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1302
    :cond_0
    return v7

    .line 1303
    :cond_1
    new-array v5, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v0

    sget-object v6, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v6, v5, v7

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1304
    return v7

    .line 1305
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFallback()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1306
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "serviceState.getState() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_3

    .line 1308
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "CanFallbackForTimeout() : SmsFallbackDefaultSupported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    return v7

    .line 1314
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v3    # "simOperator":Ljava/lang/String;
    .end local v4    # "iccType":I
    :cond_3
    goto :goto_0

    .line 1312
    :catch_0
    move-exception v1

    .line 1313
    .local v1, "ex":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No permission for telephony service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CanFallbackForTimeout() : SmsFallback is not Supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v0
.end method

.method private getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "retryCount"    # I
    .param p7, "statusReportRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1379
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "messageId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string/jumbo v1, "pdu"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v1, "contentType"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retryCount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "statusReport"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    return-object v0
.end method

.method private getSmsFallback()Z
    .locals 3

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-nez v1, :cond_0

    .line 788
    const/4 v1, 0x0

    return v1

    .line 791
    :cond_0
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->getSmsFallback(I)Z

    move-result v0

    .line 792
    return v0
.end method

.method private getTPMR([B)B
    .locals 4
    .param p1, "pdu"    # [B

    .line 771
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 774
    :cond_0
    aget-byte v1, p1, v0

    .line 778
    .local v1, "scaLen":I
    if-lez v1, :cond_2

    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 782
    :cond_1
    add-int/lit8 v0, v1, 0x2

    aget-byte v0, p1, v0

    return v0

    .line 779
    :cond_2
    :goto_0
    return v0

    .line 772
    .end local v1    # "scaLen":I
    :cond_3
    :goto_1
    return v0
.end method

.method private getTokenByMessageId(I)I
    .locals 4
    .param p1, "messageId"    # I

    .line 410
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 414
    .local v2, "value":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getMessageId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 415
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result v3

    return v3

    .line 417
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;"
    .end local v2    # "value":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :cond_0
    goto :goto_0

    .line 418
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;ZI)V
    .locals 13
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "token"    # I
    .param p3, "messageId"    # I
    .param p4, "nReasonCode"    # I
    .param p5, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p6, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .param p7, "isCdmaContentType"    # Z
    .param p8, "nRetryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 858
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_0

    .line 859
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V

    goto/16 :goto_0

    .line 860
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_1

    .line 861
    invoke-direct {p0, p2, v10, v11, v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 862
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_2

    .line 863
    invoke-direct {p0, p2, v10, v11, v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 864
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_3

    .line 865
    invoke-direct {p0, p2, v10, v11, v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 866
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_4

    .line 867
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 868
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_5

    .line 869
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 870
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_6

    .line 871
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V

    goto/16 :goto_0

    .line 872
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne v8, v0, :cond_7

    .line 873
    invoke-direct {p0, p2, v10, v11, v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 874
    :cond_7
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 875
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V

    goto :goto_0

    .line 876
    :cond_8
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 877
    invoke-direct {p0, p2, v10, v11, v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 878
    :cond_9
    new-array v1, v5, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 879
    invoke-direct {p0, p2, v10, v11, v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 880
    :cond_a
    if-eqz v11, :cond_b

    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFallback()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 881
    invoke-virtual {v12, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 882
    const/16 v0, 0x13

    invoke-virtual {v12, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 883
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 885
    :cond_b
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 887
    :goto_0
    return-void
.end method

.method private handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x198

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1113
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1114
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1115
    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1119
    :goto_1
    return-void
.end method

.method private handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p5, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    if-eqz p5, :cond_0

    iget v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1154
    iget v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1156
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1157
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1158
    :cond_0
    const/4 v8, 0x1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1160
    :goto_0
    return-void
.end method

.method private handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "reasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorCause()I

    move-result v7

    .line 1190
    .local v7, "errorCause":I
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result v8

    .line 1191
    .local v8, "errorClass":I
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v9

    .line 1193
    .local v9, "reason":I
    if-eqz v8, :cond_4

    const/16 v0, 0x9

    if-eq v8, v0, :cond_2

    const/4 v0, 0x2

    if-eq v8, v0, :cond_1

    const/4 v0, 0x3

    if-eq v8, v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move v4, v9

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto/16 :goto_0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move v4, v9

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 1208
    goto/16 :goto_0

    .line 1204
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x3

    move v1, p1

    move v2, p2

    move v4, v9

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 1205
    goto :goto_0

    .line 1210
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ims failed. Retry to send over 1x"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsSmsImpl;->canFallback(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x4

    move v1, p1

    move v2, p2

    move v4, v9

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    .line 1214
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    move v1, p1

    move v2, p2

    move v4, v9

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 1216
    goto :goto_0

    .line 1195
    :cond_4
    const/16 v0, 0x2714

    if-ne p3, v0, :cond_5

    .line 1196
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x4

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    goto :goto_0

    .line 1199
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 1202
    nop

    .line 1220
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< SEND_SMS_CDMA : token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " messageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method private handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1142
    if-lez p3, :cond_0

    const v0, 0x8000

    if-ge p3, v0, :cond_0

    .line 1143
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1144
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1145
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1147
    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1149
    :goto_0
    return-void
.end method

.method private handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p5, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .param p6, "nRetryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    move-object v6, p0

    move v7, p3

    move-object/from16 v8, p5

    const/4 v0, -0x1

    const/16 v1, 0x1f8

    if-ne v7, v1, :cond_0

    move/from16 v2, p6

    if-ne v2, v0, :cond_1

    .line 1066
    const/4 v2, 0x5

    move v9, v2

    .end local p6    # "nRetryAfter":I
    .local v2, "nRetryAfter":I
    goto :goto_0

    .line 1065
    .end local v2    # "nRetryAfter":I
    .restart local p6    # "nRetryAfter":I
    :cond_0
    move/from16 v2, p6

    .line 1067
    :cond_1
    const/16 v3, 0x3e7

    if-ne v7, v3, :cond_2

    .line 1068
    iget-object v0, v6, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting SMS resend timer. 999 error ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void

    .line 1067
    :cond_2
    move v9, v2

    .line 1072
    .end local p6    # "nRetryAfter":I
    .local v9, "nRetryAfter":I
    :goto_0
    const/16 v2, 0x198

    if-eq v7, v2, :cond_4

    if-ne v7, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v10, p4

    goto :goto_2

    :cond_4
    :goto_1
    if-eq v9, v0, :cond_6

    if-eqz v8, :cond_6

    .line 1073
    iget v0, v8, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 1074
    iget v0, v8, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, v8, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1075
    iget-object v0, v6, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1076
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, v6, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v2, v9, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1077
    .end local v0    # "msg":Landroid/os/Message;
    move-object v10, p4

    goto :goto_3

    .line 1078
    :cond_5
    const/16 v0, 0x9

    move-object v10, p4

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1079
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_3

    .line 1072
    :cond_6
    move-object v10, p4

    .line 1082
    :goto_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1084
    :goto_3
    return-void
.end method

.method private handleGsmResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "status"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1225
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v6

    .line 1226
    .local v6, "reason":I
    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1228
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsSmsImpl;->canFallback(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ims failed. Retry SMS Over SGs/CS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x4

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 1234
    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x3

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 1237
    goto :goto_0

    .line 1239
    :cond_3
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result v0

    if-nez v0, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    goto :goto_0

    .line 1242
    :cond_4
    const/4 p3, 0x2

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v3, 0x2

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 1245
    nop

    .line 1249
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "< SEND_SMS : token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " messageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (1:Ok 2:Error 3:Retry 4:Fallback)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    return-void
.end method

.method private handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p5, "isCdmaContentType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    const/4 v0, 0x2

    .line 892
    .local v0, "status":I
    const/16 v1, 0x2711

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p3, v1, :cond_4

    const/16 v1, 0x2712

    const/16 v4, 0x9

    const/16 v5, 0x13

    if-eq p3, v1, :cond_2

    const/16 v1, 0x2714

    if-eq p3, v1, :cond_1

    .line 919
    if-eqz p5, :cond_0

    .line 920
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 921
    const/16 v1, 0x6b

    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 924
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_0

    .line 913
    :cond_1
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 914
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 915
    const/4 v0, 0x4

    .line 916
    goto :goto_0

    .line 904
    :cond_2
    if-eqz p5, :cond_3

    .line 905
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    goto :goto_0

    .line 907
    :cond_3
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 908
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 910
    goto :goto_0

    .line 894
    :cond_4
    if-eqz p5, :cond_5

    .line 895
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 896
    const/16 v1, 0x69

    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_0

    .line 898
    :cond_5
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 899
    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 901
    nop

    .line 927
    :goto_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 928
    return-void
.end method

.method private handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p5, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .param p6, "nRetryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    move-object v6, p0

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    const/16 v0, 0x9

    const/4 v1, -0x1

    if-ne v10, v1, :cond_1

    .line 1041
    if-eqz v7, :cond_0

    .line 1042
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1043
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 1045
    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1047
    :cond_1
    const/16 v1, 0x193

    if-eq v7, v1, :cond_3

    const/16 v1, 0x194

    if-eq v7, v1, :cond_3

    const/16 v1, 0x198

    if-eq v7, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq v7, v1, :cond_3

    const/16 v1, 0x1f7

    if-eq v7, v1, :cond_3

    const/16 v1, 0x1f8

    if-eq v7, v1, :cond_3

    const/16 v1, 0x64

    if-lt v7, v1, :cond_3

    const/16 v1, 0x2bb

    if-gt v7, v1, :cond_3

    if-eqz v9, :cond_3

    .line 1050
    iget v1, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 1051
    iget v0, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1052
    iget-object v0, v6, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1053
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, v6, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v2, v10, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1054
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1056
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1059
    :cond_3
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1061
    :goto_0
    return-void
.end method

.method private handleNoResponseTimeout(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 12
    .param p1, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 351
    iget v7, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 352
    .local v7, "token":I
    iget v8, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 355
    .local v8, "messageId":I
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x2

    .line 357
    .local v0, "statusError":I
    invoke-direct {p0}, Lcom/sec/internal/google/ImsSmsImpl;->canFallbackForTimeout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v0, 0x4

    move v9, v0

    goto :goto_0

    .line 357
    :cond_0
    move v9, v0

    .line 360
    .end local v0    # "statusError":I
    .local v9, "statusError":I
    :goto_0
    const-string v0, "application/vnd.3gpp.sms"

    iget-object v1, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, " reason = timeOut"

    const-string v11, " messageId = "

    if-eqz v0, :cond_1

    .line 361
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v4, 0x1

    const/4 v5, -0x1

    move v1, v7

    move v2, v8

    move v3, v9

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 362
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNoResponseTimeout: onSendSmsResult token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v4, 0x1

    const/16 v5, 0x1f

    const/4 v6, 0x2

    move v1, v7

    move v2, v8

    move v3, v9

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 366
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNoResponseTimeout: onSendSmsResponse token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    .end local v9    # "statusError":I
    :cond_2
    goto :goto_2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1122
    const/16 v0, 0x193

    if-eq p3, v0, :cond_2

    const/16 v0, 0x198

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-lt p3, v0, :cond_2

    :cond_0
    const/16 v0, 0x2c4

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 1127
    :cond_1
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1123
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1124
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1125
    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1129
    :goto_1
    return-void
.end method

.method private handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;I)V
    .locals 16
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "token"    # I
    .param p3, "messageId"    # I
    .param p4, "nReasonCode"    # I
    .param p5, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p6, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    const/4 v0, 0x2

    .line 933
    .local v0, "status":I
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getTpdu()[B

    move-result-object v9

    .line 934
    .local v9, "pdu":[B
    const/4 v1, 0x0

    .line 935
    .local v1, "tpCause":I
    array-length v2, v9

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 936
    aget-byte v1, v9, v3

    move v10, v1

    goto :goto_0

    .line 935
    :cond_0
    move v10, v1

    .line 938
    .end local v1    # "tpCause":I
    .local v10, "tpCause":I
    :goto_0
    move/from16 v11, p4

    add-int/lit16 v12, v11, -0x8000

    .line 940
    .local v12, "rpCause":I
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v5, v1, v2

    const/4 v2, 0x2

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    aput-object v2, v1, v3

    const/4 v2, 0x4

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    aput-object v3, v1, v2

    invoke-virtual {v7, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    const/16 v2, 0x13

    if-eqz v1, :cond_1

    const/16 v1, 0x26

    if-eq v12, v1, :cond_8

    :cond_1
    const/16 v1, 0x29

    if-eq v12, v1, :cond_8

    const/16 v3, 0x2a

    if-eq v12, v3, :cond_8

    const/16 v5, 0x45

    if-ne v12, v5, :cond_2

    goto :goto_2

    .line 964
    :cond_2
    invoke-direct {v6, v7, v10, v12}, Lcom/sec/internal/google/ImsSmsImpl;->isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 965
    const/4 v0, 0x2

    move v13, v0

    goto/16 :goto_4

    .line 966
    :cond_3
    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v7, v5, :cond_4

    const/16 v5, 0x15

    if-ne v12, v5, :cond_4

    const/16 v5, 0xc5

    if-ne v10, v5, :cond_4

    .line 969
    const/4 v0, 0x1

    move v13, v0

    goto/16 :goto_4

    .line 970
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFallback()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 971
    invoke-virtual {v8, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 972
    invoke-virtual {v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 973
    const/4 v0, 0x4

    move v13, v0

    goto/16 :goto_4

    .line 974
    :cond_5
    if-eq v12, v3, :cond_7

    const/16 v2, 0x6f

    if-eq v12, v2, :cond_7

    const/16 v2, 0x2f

    if-eq v12, v2, :cond_7

    const/16 v2, 0x1b

    if-eq v12, v2, :cond_7

    if-eq v12, v1, :cond_7

    const/16 v1, 0x62

    if-ne v12, v1, :cond_6

    goto :goto_1

    :cond_6
    move v13, v0

    goto :goto_4

    .line 980
    :cond_7
    :goto_1
    const/4 v0, 0x3

    move v13, v0

    goto :goto_4

    .line 945
    :cond_8
    :goto_2
    iget-object v1, v6, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 947
    .local v1, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    const/4 v3, -0x1

    .line 948
    .local v3, "subId":I
    invoke-static/range {p6 .. p6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 949
    .local v5, "subIdList":[I
    if-eqz v5, :cond_9

    .line 950
    aget v3, v5, v4

    .line 952
    :cond_9
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v13

    .line 953
    .local v13, "isRoaming":Z
    if-eqz v13, :cond_a

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v14

    const/16 v15, 0x12

    if-ne v14, v15, :cond_a

    .line 955
    iget-object v2, v6, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "orange, RP# "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", isRoaming is true and DataNetworkType is IWLAN, so CS fallback does not done"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x1

    goto :goto_3

    .line 959
    :cond_a
    invoke-virtual {v8, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 960
    invoke-virtual {v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 961
    iget-object v2, v6, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "orange, set errorcause as fallbackIMS due to RP# "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v0, 0x4

    .line 964
    .end local v1    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    .end local v3    # "subId":I
    .end local v5    # "subIdList":[I
    .end local v13    # "isRoaming":Z
    :goto_3
    move v13, v0

    .line 983
    .end local v0    # "status":I
    .local v13, "status":I
    :goto_4
    iget-object v0, v6, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRPError: rpCause= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tpCause= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v13

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 985
    return-void
.end method

.method private handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "reasonCode"    # I
    .param p4, "status"    # I
    .param p5, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1182
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/internal/google/ImsSmsImpl;->handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1184
    :cond_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sec/internal/google/ImsSmsImpl;->handleGsmResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1186
    :goto_0
    return-void
.end method

.method private handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    if-eqz p3, :cond_1

    .line 1088
    const/16 v0, 0x19f

    if-ne p3, v0, :cond_0

    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1090
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1091
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1093
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1094
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1097
    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1099
    :goto_0
    return-void
.end method

.method private handleSendDelayedMessage()V
    .locals 7

    .line 314
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 316
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 319
    .local v2, "value":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    invoke-virtual {v2}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result v3

    .line 320
    .local v3, "token":I
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 321
    .local v4, "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    if-nez v5, :cond_0

    .line 322
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/sec/internal/google/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V

    .line 327
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;>;"
    .end local v2    # "value":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .end local v3    # "token":I
    .end local v4    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :cond_0
    return-void
.end method

.method private handleSmsRetry(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 7
    .param p1, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 330
    iget v0, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 332
    .local v0, "token":I
    const-wide/32 v1, 0x1fbd0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    iget-object v4, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    const-string v5, "application/vnd.3gpp.sms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    iget-object v4, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    invoke-direct {p0, v4}, Lcom/sec/internal/google/ImsSmsImpl;->setTPRDintoTPDU([B)V

    .line 339
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/sec/internal/google/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 344
    goto :goto_0

    .line 340
    :catchall_0
    move-exception v4

    .line 341
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "exception during sms retry"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    nop

    .end local v4    # "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 344
    :goto_0
    nop

    .line 345
    invoke-virtual {v4, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 344
    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    :cond_2
    return-void

    .line 343
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_3

    .line 344
    nop

    .line 345
    invoke-virtual {v5, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 344
    invoke-virtual {v5, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    :cond_3
    throw v4
.end method

.method private handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1102
    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    const/16 v0, 0x2bb

    if-gt p3, v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1104
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1105
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1107
    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1109
    :goto_0
    return-void
.end method

.method private handleStatusReport(IILjava/lang/String;[B)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "messageId"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDeliveryPendingList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "statusReportMatched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 391
    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 392
    .local v3, "tracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    iget v4, v3, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    if-ne v4, p1, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 394
    iput p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLastRxStatusMsgId:I

    .line 395
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    iget v5, v3, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-interface {v4, v5, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 396
    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    goto :goto_1

    .line 390
    .end local v3    # "tracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 403
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "statusReport is not matched. But, the messageId is forcibly saved."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput p2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLastRxStatusMsgId:I

    .line 405
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 407
    :cond_2
    return-void
.end method

.method private handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p5, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1164
    const/16 v0, 0x190

    if-eq p3, v0, :cond_0

    const/16 v0, 0x193

    if-eq p3, v0, :cond_0

    const/16 v0, 0x194

    if-eq p3, v0, :cond_0

    const/16 v0, 0x1e8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_2

    const/16 v0, 0x258

    if-ge p3, v0, :cond_2

    :cond_0
    if-eqz p5, :cond_2

    .line 1166
    iget v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1167
    iget v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p5, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1168
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1169
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1170
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 1171
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1172
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1173
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1176
    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1178
    :goto_0
    return-void
.end method

.method private handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    const/16 v0, 0x198

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1e0

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1133
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1134
    const/16 v0, 0x13

    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1135
    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1139
    :goto_1
    return-void
.end method

.method private handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "messageId"    # I
    .param p3, "nReasonCode"    # I
    .param p4, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .param p5, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .param p6, "isCdmaContentType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1008
    move-object v6, p0

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    const/16 v0, 0x9

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/16 v3, 0x190

    if-lt v7, v3, :cond_2

    const/16 v3, 0x257

    if-gt v7, v3, :cond_2

    if-eqz v9, :cond_2

    .line 1009
    iget-object v3, v6, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsSmsTracker.mRetryCount =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget v3, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 1011
    iget v0, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    add-int/2addr v0, v4

    iput v0, v9, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1012
    iget-object v0, v6, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1013
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, v6, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1014
    .end local v0    # "msg":Landroid/os/Message;
    goto/16 :goto_1

    .line 1015
    :cond_0
    if-eqz p6, :cond_1

    .line 1016
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1017
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1019
    :cond_1
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1020
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1021
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1024
    :cond_2
    const/16 v3, 0x309

    if-eq v7, v3, :cond_4

    const/16 v3, 0x320

    if-ne v7, v3, :cond_3

    goto :goto_0

    .line 1034
    :cond_3
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1025
    :cond_4
    :goto_0
    if-eqz p6, :cond_5

    .line 1026
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1027
    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 1029
    :cond_5
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 1030
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 1031
    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    .line 1036
    :goto_1
    return-void
.end method

.method private isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z
    .locals 3
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "tpCause"    # I
    .param p3, "rpCause"    # I

    .line 988
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v1, 0x6f

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0xc3

    if-eq p2, v0, :cond_0

    if-eq p3, v1, :cond_0

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_0

    const/16 v0, 0x1c

    if-ne p3, v0, :cond_1

    .line 993
    :cond_0
    return v2

    .line 994
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    const/16 v0, 0x29

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p3, v0, :cond_2

    const/16 v0, 0x62

    if-eq p3, v0, :cond_2

    if-ne p3, v1, :cond_3

    .line 1000
    :cond_2
    return v2

    .line 1003
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isTPRDset([B)Z
    .locals 5
    .param p1, "pdu"    # [B

    .line 751
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 754
    :cond_0
    aget-byte v1, p1, v0

    .line 758
    .local v1, "scaLen":I
    if-lez v1, :cond_3

    array-length v2, p1

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 764
    return v3

    .line 766
    :cond_2
    return v0

    .line 759
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isTPRDset() sca is wrong: return false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return v0

    .line 752
    .end local v1    # "scaLen":I
    :cond_4
    :goto_1
    return v0
.end method

.method private onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 17
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageId"    # I
    .param p4, "nReasonCode"    # I
    .param p5, "nRetryAfter"    # I
    .param p6, "response"    # Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    move-object/from16 v15, p0

    move/from16 v14, p3

    move/from16 v13, p4

    iget v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v16

    .line 818
    .local v16, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSMSAck: mno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retryAfter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 822
    .local v5, "isCdmaContentType":Z
    :goto_0
    iget-object v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;

    .line 824
    .local v11, "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    if-eqz v11, :cond_2

    .line 825
    iput-boolean v1, v11, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    .line 827
    iget-boolean v0, v11, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 830
    iget-object v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_1
    iget-object v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 836
    iget-object v0, v15, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    :cond_2
    move-object/from16 v10, p6

    invoke-virtual {v10, v14}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setMessageRef(I)V

    .line 842
    const/16 v0, 0x2710

    if-ge v0, v13, :cond_3

    const/16 v0, 0x2af8

    if-ge v13, v0, :cond_3

    .line 843
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/google/ImsSmsImpl;->handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V

    .line 844
    return-void

    .line 848
    :cond_3
    const v0, 0x8000

    if-ge v0, v13, :cond_4

    const v0, 0x80ff

    if-ge v13, v0, :cond_4

    .line 849
    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object v0, v11

    .end local v11    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .local v0, "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    move-object/from16 v11, p6

    move/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/google/ImsSmsImpl;->handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;I)V

    .line 850
    return-void

    .line 848
    .end local v0    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .restart local v11    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :cond_4
    move-object v0, v11

    .line 853
    .end local v11    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .restart local v0    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    move-object v12, v0

    move v13, v5

    move/from16 v14, p5

    invoke-direct/range {v6 .. v14}, Lcom/sec/internal/google/ImsSmsImpl;->handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;ZI)V

    .line 854
    return-void
.end method

.method private registerSmsEventListener(I)V
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "registerSmsEventListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/google/ImsSmsImpl$SmsEventListener;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    .line 218
    :cond_0
    return-void
.end method

.method private resultToCause(I)I
    .locals 2
    .param p1, "result"    # I

    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, "ErrorCause":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 809
    const/16 v0, 0x29

    goto :goto_0

    .line 805
    :cond_0
    const/16 v0, 0x6f

    .line 806
    goto :goto_0

    .line 802
    :cond_1
    const/16 v0, 0x16

    .line 803
    goto :goto_0

    .line 799
    :cond_2
    const/4 v0, 0x0

    .line 800
    nop

    .line 812
    :goto_0
    return v0
.end method

.method private sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 12
    .param p1, "imsSmsTracker"    # Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .param p2, "delayedMsg"    # Z

    .line 506
    invoke-virtual {p1}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 507
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "pdu"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 508
    .local v1, "pdu":[B
    const-string v2, "destAddr"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 509
    .local v9, "destAddr":Ljava/lang/String;
    const-string v2, "contentType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 510
    .local v10, "contentType":Ljava/lang/String;
    const-string v2, "messageId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 512
    .local v11, "messageId":I
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 513
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 516
    :cond_0
    if-eqz p2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "> SEND_SMS : token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " destAddr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " messageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " statusReportRequested = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pdu = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 527
    const/4 v3, 0x2

    .line 528
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x1fbd0

    .line 527
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 530
    :cond_3
    return-void
.end method

.method private setTPMRintoTPDU([BI)V
    .locals 5
    .param p1, "pdu"    # [B
    .param p2, "phoneId"    # I

    .line 646
    if-eqz p1, :cond_5

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 649
    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    .line 653
    .local v1, "scaLen":I
    if-lez v1, :cond_4

    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_4

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 658
    :cond_1
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 659
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    .line 663
    :cond_2
    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    const/16 v4, 0xff

    and-int/2addr v2, v4

    iput v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    .line 664
    if-lt v2, v4, :cond_3

    .line 665
    iput v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    goto :goto_0

    .line 668
    :cond_3
    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    .line 670
    :goto_0
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "persist.radio.tpmr_sms"

    invoke-direct {p0, p2, v2, v0}, Lcom/sec/internal/google/ImsSmsImpl;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 672
    add-int/lit8 v0, v1, 0x2

    iget v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 673
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTPMRintoTPDU mTpmr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void

    .line 654
    :cond_4
    :goto_1
    return-void

    .line 647
    .end local v1    # "scaLen":I
    :cond_5
    :goto_2
    return-void
.end method

.method private setTPRDintoTPDU([B)V
    .locals 3
    .param p1, "pdu"    # [B

    .line 736
    if-eqz p1, :cond_3

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    .line 743
    .local v0, "scaLen":I
    if-lez v0, :cond_2

    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 747
    :cond_1
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 748
    return-void

    .line 744
    :cond_2
    :goto_0
    return-void

    .line 737
    .end local v0    # "scaLen":I
    :cond_3
    :goto_1
    return-void
.end method

.method private setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 688
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "propBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 690
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "prop":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 693
    const-string p3, ""

    .line 695
    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 696
    const-string v3, ","

    if-eqz v2, :cond_1

    .line 697
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 700
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 701
    return-void

    .line 704
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_4

    .line 705
    const-string v5, ""

    .line 706
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v6, v1

    if-ge v4, v6, :cond_3

    .line 707
    aget-object v5, v1, v4

    .line 709
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 712
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    if-eqz v1, :cond_5

    .line 714
    add-int/lit8 v4, p1, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_5

    .line 715
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 719
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "propVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 722
    .local v4, "propValLen":I
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 725
    goto :goto_2

    .line 723
    :catch_0
    move-exception v5

    .line 724
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v6, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "setTelephonyProperty: utf-8 not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const/16 v5, 0x5b

    if-le v4, v5, :cond_6

    .line 727
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " propVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 732
    :cond_6
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 557
    .local v0, "pdu":[B
    const/4 v1, 0x0

    .line 558
    .local v1, "errorCause":I
    const/4 v2, 0x0

    .line 559
    .local v2, "index":I
    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 560
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne p4, v5, :cond_0

    .line 561
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput-byte v3, v0, v2

    .line 562
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "index":I
    .restart local v2    # "index":I
    aput-byte v3, v0, v5

    .line 563
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .restart local v5    # "index":I
    int-to-byte v6, p3

    aput-byte v6, v0, v2

    .line 564
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "index":I
    .restart local v2    # "index":I
    aput-byte v3, v0, v5

    goto :goto_0

    .line 566
    :cond_0
    invoke-direct {p0, p4}, Lcom/sec/internal/google/ImsSmsImpl;->resultToCause(I)I

    move-result v1

    .line 567
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 568
    .local v5, "HighValue":I
    and-int/lit16 v6, v1, 0xff

    .line 569
    .local v6, "lowValue":I
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    int-to-byte v8, v5

    aput-byte v8, v0, v2

    .line 570
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .restart local v2    # "index":I
    int-to-byte v8, v6

    aput-byte v8, v0, v7

    .line 571
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .restart local v7    # "index":I
    int-to-byte v8, p3

    aput-byte v8, v0, v2

    .line 572
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "index":I
    .restart local v2    # "index":I
    aput-byte v3, v0, v7

    .line 574
    .end local v5    # "HighValue":I
    .end local v6    # "lowValue":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    invoke-interface {v3, p1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 575
    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    if-eqz v3, :cond_1

    .line 576
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    .line 578
    :cond_1
    new-instance v3, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    invoke-direct {v3, v0, v1, v4}, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;-><init>([BII)V

    iput-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    .line 579
    iget-object v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v4, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "> SMS_ACK : messageRef = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_2
    return-void
.end method

.method public acknowledgeSmsReport(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSmsReport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLastRxStatusMsgId:I

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSms(IIII)V

    .line 625
    return-void
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "errorCause":I
    const/4 v1, 0x0

    .line 596
    .local v1, "index":I
    array-length v2, p4

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 598
    .local v2, "smsAckPdu":[B
    iget v3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 599
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 600
    .local v3, "HighValue":I
    and-int/lit16 v4, v0, 0xff

    .line 601
    .local v4, "lowValue":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    int-to-byte v6, v3

    aput-byte v6, v2, v1

    .line 602
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    int-to-byte v6, v4

    aput-byte v6, v2, v5

    .line 603
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .restart local v5    # "index":I
    int-to-byte v6, p3

    aput-byte v6, v2, v1

    .line 604
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "index":I
    .restart local v1    # "index":I
    array-length v6, p4

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 605
    const/4 v5, 0x0

    array-length v6, p4

    invoke-static {p4, v5, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    invoke-interface {v5, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 607
    iget-object v5, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v6, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "> SMS_ACK_WITH_PDU : messageRef = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .end local v3    # "HighValue":I
    .end local v4    # "lowValue":I
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    :cond_0
    return-void
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .locals 8
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    const-string v0, "3GPP"

    .line 629
    .local v0, "smsFormat":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 630
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 629
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 632
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 633
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_1

    .line 629
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    .line 637
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 639
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v1, "3GPP2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    const-string v1, "3gpp2"

    return-object v1

    .line 642
    :cond_3
    const-string v1, "3gpp"

    return-object v1
.end method

.method public handleRetryDeliveryReportAck(Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;)V
    .locals 3
    .param p1, "sentDeliveryAck"    # Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;

    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sentDeliveryAck is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 381
    :cond_0
    iget v0, p1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->mPhoneId:I

    iget-object v2, p1, Lcom/sec/internal/google/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 384
    :cond_1
    return-void
.end method

.method public sendRpSmma(ILjava/lang/String;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    const/4 v2, 0x0

    const-string v4, "application/vnd.3gpp.sms"

    const/16 v5, 0x101

    const/4 v6, 0x1

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 535
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRpSmma"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not send RP Smma: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;[B)V
    .locals 30
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageId"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "serviceCenter"    # Ljava/lang/String;
    .param p6, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    move-object/from16 v9, p0

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v11, p6

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    move-object v10, v0

    .line 442
    .local v10, "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    const/16 v22, 0x0

    .line 443
    .local v22, "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    const/4 v1, 0x0

    .line 444
    .local v1, "destAddr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 445
    .local v2, "pdu":[B
    const/4 v3, 0x0

    .line 446
    .local v3, "statusReportRequested":Z
    const/4 v4, 0x0

    .line 447
    .local v4, "msgId":I
    iget v12, v9, Lcom/sec/internal/google/ImsSmsImpl;->mLastRetryCount:I

    .line 449
    .local v12, "retryCount":I
    const-string v8, "3gpp"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/vnd.3gpp.sms"

    goto :goto_0

    :cond_0
    const-string v0, "application/vnd.3gpp2.sms"

    :goto_0
    move-object v6, v0

    .line 452
    .local v6, "contentType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v0, :cond_2

    .line 453
    const/4 v0, 0x2

    :try_start_1
    iput v0, v9, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    .line 454
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 455
    .local v0, "smsc":[B
    array-length v5, v0

    array-length v7, v11

    add-int/2addr v5, v7

    new-array v5, v5, [B

    move-object v2, v5

    .line 457
    array-length v5, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    array-length v5, v0

    array-length v7, v11

    move-object/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "smsc":[B
    .local v18, "smsc":[B
    invoke-static {v11, v0, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    invoke-virtual {v10, v2, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 462
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 463
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v5

    move v3, v5

    .line 465
    invoke-direct {v9, v2}, Lcom/sec/internal/google/ImsSmsImpl;->isTPRDset([B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 467
    :try_start_2
    invoke-direct {v9, v2}, Lcom/sec/internal/google/ImsSmsImpl;->getTPMR([B)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v9, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    move/from16 v7, p1

    goto :goto_1

    .line 469
    :cond_1
    move/from16 v7, p1

    invoke-direct {v9, v2, v7}, Lcom/sec/internal/google/ImsSmsImpl;->setTPMRintoTPDU([BI)V

    .line 472
    :goto_1
    iget v5, v9, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v5

    .line 474
    .end local v18    # "smsc":[B
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    goto :goto_3

    .line 491
    :catch_0
    move-exception v0

    move/from16 v7, p1

    :goto_2
    move-object/from16 v27, v8

    move-object v7, v10

    move v5, v12

    move-object v8, v13

    goto/16 :goto_4

    .line 475
    :cond_2
    move/from16 v7, p1

    const/4 v0, 0x0

    :try_start_3
    const-string v5, "3gpp2"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v5, :cond_3

    .line 476
    const/4 v5, 0x1

    :try_start_4
    iput v5, v9, Lcom/sec/internal/google/ImsSmsImpl;->mCurrentNetworkType:I

    .line 477
    invoke-virtual {v10, v11, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 478
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v5

    move v4, v5

    .line 479
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getTpdu()[B

    move-result-object v5

    move-object v2, v5

    .line 480
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 481
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move v3, v5

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    goto :goto_3

    .line 491
    :catch_1
    move-exception v0

    goto :goto_2

    .line 475
    :cond_3
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    .line 484
    .end local v1    # "destAddr":Ljava/lang/String;
    .end local v2    # "pdu":[B
    .end local v3    # "statusReportRequested":Z
    .end local v4    # "msgId":I
    .local v23, "destAddr":Ljava/lang/String;
    .local v24, "pdu":[B
    .local v25, "statusReportRequested":Z
    .local v26, "msgId":I
    :goto_3
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, v26

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move v7, v12

    move-object/from16 v27, v8

    move/from16 v8, v25

    :try_start_5
    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/google/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move v5, v12

    .end local v12    # "retryCount":I
    .local v5, "retryCount":I
    move-object v12, v1

    .line 485
    .local v12, "map":Ljava/util/HashMap;
    :try_start_6
    new-instance v1, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v10

    .end local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .local v7, "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    move-object v10, v1

    move/from16 v11, p1

    move-object v8, v13

    move/from16 v13, p2

    move v2, v14

    move v14, v5

    move v3, v15

    move/from16 v15, v26

    move-object/from16 v16, v24

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    move/from16 v19, v25

    :try_start_7
    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/google/ImsSmsImpl$1;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 487
    .end local v22    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .local v1, "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :try_start_8
    iget-object v4, v9, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 488
    iget-object v4, v9, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_4
    invoke-direct {v9, v1, v0}, Lcom/sec/internal/google/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 502
    .end local v12    # "map":Ljava/util/HashMap;
    move-object/from16 v22, v1

    move v13, v2

    move v1, v3

    goto/16 :goto_6

    .line 491
    :catch_2
    move-exception v0

    move-object/from16 v22, v1

    move v14, v2

    move v15, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    goto :goto_4

    .end local v1    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    .restart local v22    # "imsSmsTracker":Lcom/sec/internal/google/ImsSmsImpl$ImsSmsTracker;
    :catch_3
    move-exception v0

    move v14, v2

    move v15, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    goto :goto_4

    .end local v7    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    :catch_4
    move-exception v0

    move-object v7, v10

    move-object v8, v13

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    .end local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local v7    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    goto :goto_4

    .end local v5    # "retryCount":I
    .end local v7    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .local v12, "retryCount":I
    :catch_5
    move-exception v0

    move-object v7, v10

    move v5, v12

    move-object v8, v13

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    .end local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local v12    # "retryCount":I
    .restart local v5    # "retryCount":I
    .restart local v7    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    goto :goto_4

    .end local v5    # "retryCount":I
    .end local v7    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local v23    # "destAddr":Ljava/lang/String;
    .end local v24    # "pdu":[B
    .end local v25    # "statusReportRequested":Z
    .end local v26    # "msgId":I
    .local v1, "destAddr":Ljava/lang/String;
    .restart local v2    # "pdu":[B
    .restart local v3    # "statusReportRequested":Z
    .restart local v4    # "msgId":I
    .restart local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .restart local v12    # "retryCount":I
    :catch_6
    move-exception v0

    move-object/from16 v27, v8

    move-object v7, v10

    move v5, v12

    move-object v8, v13

    .line 492
    .end local v10    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    .end local v12    # "retryCount":I
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v5    # "retryCount":I
    .restart local v7    # "msg":Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;
    :goto_4
    iget-object v10, v9, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not send sms: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move-object/from16 v10, v27

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v13, " messageId = "

    if-eqz v10, :cond_5

    .line 494
    iget-object v10, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v28, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v17, v1

    move v1, v15

    .end local v1    # "destAddr":Ljava/lang/String;
    .local v17, "destAddr":Ljava/lang/String;
    move/from16 v15, v18

    invoke-interface/range {v10 .. v15}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V

    .line 495
    iget-object v10, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v11, v9, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onSendSmsResult token = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v15, v28

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p3

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v14

    goto :goto_5

    .line 497
    .end local v17    # "destAddr":Ljava/lang/String;
    .restart local v1    # "destAddr":Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v1

    move v1, v15

    move-object v15, v13

    .end local v1    # "destAddr":Ljava/lang/String;
    .restart local v17    # "destAddr":Ljava/lang/String;
    iget-object v10, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    const/4 v13, 0x2

    const/16 v16, 0x1

    const/16 v18, 0x1f

    const/16 v19, 0x2

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v14, v16

    move-object/from16 v29, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-interface/range {v10 .. v16}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResponse(IIIIII)V

    .line 499
    iget-object v10, v9, Lcom/sec/internal/google/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v11, v9, Lcom/sec/internal/google/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onSendSmsResponse token = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_5
    iget-object v10, v9, Lcom/sec/internal/google/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v23, v17

    .line 503
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "pdu":[B
    .end local v3    # "statusReportRequested":Z
    .end local v4    # "msgId":I
    .end local v17    # "destAddr":Ljava/lang/String;
    .restart local v23    # "destAddr":Ljava/lang/String;
    .restart local v24    # "pdu":[B
    .restart local v25    # "statusReportRequested":Z
    .restart local v26    # "msgId":I
    :goto_6
    return-void
.end method

.method public setRetryCount(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "retryCount"    # I

    .line 422
    iput p3, p0, Lcom/sec/internal/google/ImsSmsImpl;->mLastRetryCount:I

    .line 423
    return-void
.end method

.method public updateTPMR(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 677
    iget-object v0, p0, Lcom/sec/internal/google/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 678
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v1, "persist.radio.tpmr_sms"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "tpmr":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    goto :goto_1

    .line 681
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/internal/google/ImsSmsImpl;->mTpmr:I

    .line 685
    :goto_1
    return-void
.end method
