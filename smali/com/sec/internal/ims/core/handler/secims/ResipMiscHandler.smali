.class public Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;
.super Lcom/sec/internal/ims/core/handler/MiscHandler;
.source "ResipMiscHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;
    }
.end annotation


# static fields
.field private static ATCMD_CHECK_OMADM:Ljava/lang/String; = null

.field private static ATCMD_CHECK_SMS_FORMAT:Ljava/lang/String; = null

.field private static ATCMD_COMMAND_EXTRA:Ljava/lang/String; = null

.field private static ATCMD_IMSTEST_RESULT_PREFIX:Ljava/lang/String; = null

.field private static ATCMD_INTENT:Ljava/lang/String; = null

.field private static ATCMD_RESET_OMADM:Ljava/lang/String; = null

.field private static ATCMD_RESULT_ACTION:Ljava/lang/String; = null

.field private static ATCMD_RESULT_KEY:Ljava/lang/String; = null

.field private static ATCMD_RESULT_NG:Ljava/lang/String; = null

.field private static ATCMD_RESULT_OK:Ljava/lang/String; = null

.field private static ATCMD_RESULT_SUFFIX:Ljava/lang/String; = null

.field private static ATCMD_VOLTECON_RESULT_PREFIX:Ljava/lang/String; = null

.field private static final EVENT_ALARM_CANCELLED:I = 0x2

.field private static final EVENT_ALARM_FIRED:I = 0x3

.field private static final EVENT_ALARM_REQUESTED:I = 0x1

.field private static final EVENT_ECHOLOCATE_RECEIVED:I = 0x4

.field private static final EVENT_XQ_MTRIP_RECEIVED:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private final mAlarmMessageList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private final mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    .line 55
    const-string v0, "com.sec.factory.RECEIVED_FROM_RIL"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_INTENT:Ljava/lang/String;

    .line 56
    const-string v0, "command"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_COMMAND_EXTRA:Ljava/lang/String;

    .line 57
    const-string v0, "AT+IMSSTEST=0,0,0"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_CHECK_SMS_FORMAT:Ljava/lang/String;

    .line 58
    const-string v0, "AT+VOLTECON=1,0,1,0"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_CHECK_OMADM:Ljava/lang/String;

    .line 59
    const-string v0, "AT+VOLTECON=0,0,0,0"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESET_OMADM:Ljava/lang/String;

    .line 61
    const-string v0, "com.sec.factory.SEND_TO_RIL"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_ACTION:Ljava/lang/String;

    .line 62
    const-string v0, "message"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_KEY:Ljava/lang/String;

    .line 63
    const-string v0, "\r\n+IMSSTEST:0,"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_IMSTEST_RESULT_PREFIX:Ljava/lang/String;

    .line 64
    const-string v0, "\r\n+VOLTECON:0,"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_VOLTECON_RESULT_PREFIX:Ljava/lang/String;

    .line 65
    const-string v0, "\r\n\r\nOK\r\n"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_SUFFIX:Ljava/lang/String;

    .line 66
    const-string v0, "NG"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_NG:Ljava/lang/String;

    .line 67
    const-string v0, "OK"

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_OK:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 229
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/MiscHandler;-><init>(Landroid/os/Looper;)V

    .line 52
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 53
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    .line 230
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 231
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mContext:Landroid/content/Context;

    .line 232
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 233
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerMiscListener(Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;)V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerXqMtrip(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 242
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAtCmdReceiver:Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler$ATCmdReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_NG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_SUFFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->sendATCmdResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_COMMAND_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_CHECK_SMS_FORMAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;)Lcom/sec/internal/interfaces/ims/IImsFramework;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_IMSTEST_RESULT_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_CHECK_OMADM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_VOLTECON_RESULT_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESET_OMADM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_OK:Ljava/lang/String;

    return-object v0
.end method

.method private sendATCmdResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send AT CMD response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->ATCMD_RESULT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 222
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/handler/MiscHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 204
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "XqMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 206
    .local v0, "obj":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    .line 207
    .local v1, "metric":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;
    new-instance v2, Lcom/sec/internal/ims/xq/att/data/XqEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/xq/att/data/XqEvent;-><init>()V

    .line 208
    .local v2, "xqMsg":Lcom/sec/internal/ims/xq/att/data/XqEvent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;->mtrip()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/xq/att/data/XqEvent;->setXqMtrips(I)V

    .line 210
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;->mContentLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 211
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;->mContent(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;

    move-result-object v4

    .line 212
    .local v4, "xqContent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;
    if-eqz v4, :cond_2

    .line 213
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->type()I

    move-result v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->intVal()J

    move-result-wide v6

    long-to-int v6, v6

    .line 214
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->strVal()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;->strVal()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, ""

    .line 213
    :goto_1
    invoke-virtual {v2, v5, v6, v7}, Lcom/sec/internal/ims/xq/att/data/XqEvent;->setContent(IILjava/lang/String;)V

    .line 210
    .end local v4    # "xqContent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 219
    goto/16 :goto_3

    .line 178
    .end local v0    # "obj":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "metric":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;
    .end local v2    # "xqMsg":Lcom/sec/internal/ims/xq/att/data/XqEvent;
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 179
    .local v0, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    .line 180
    .local v1, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;-><init>()V

    .line 181
    .local v2, "echolocateEvent":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->msgtype()I

    move-result v3

    if-nez v3, :cond_6

    .line 182
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setType(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;)V

    .line 183
    nop

    .line 184
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->echolocateSignalData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;

    move-result-object v12

    .line 185
    .local v12, "signalMsg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;
    if-eqz v12, :cond_5

    .line 186
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->origin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->line1()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->callid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->cseq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->sessionid()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->reason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->contents()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;->isEpdgCall()Z

    move-result v11

    .line 186
    move-object v3, v2

    invoke-virtual/range {v3 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setSignalData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    .end local v12    # "signalMsg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateSignalMsg;
    :cond_5
    goto :goto_2

    .line 191
    :cond_6
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setType(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;)V

    .line 192
    nop

    .line 193
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;->echolocateRtpData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;

    move-result-object v10

    .line 194
    .local v10, "rtpMsg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;
    if-eqz v10, :cond_7

    .line 195
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->dir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->id()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->lossrate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->delay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->jitter()Ljava/lang/String;

    move-result-object v8

    .line 197
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;->measuredperiod()Ljava/lang/String;

    move-result-object v9

    .line 195
    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->setRtpData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v10    # "rtpMsg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg_/EcholocateRtpMsg;
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 201
    goto/16 :goto_3

    .line 169
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;
    .end local v2    # "echolocateEvent":Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 171
    .local v0, "id":I
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALARM_WAKE_UP id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mStackIF:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendAlarmWakeUp(I)V

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 175
    goto :goto_3

    .line 157
    .end local v0    # "id":I
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 158
    .restart local v0    # "id":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 159
    .local v1, "remove":Landroid/os/Message;
    if-nez v1, :cond_a

    .line 160
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not reigstered id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 162
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 163
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 165
    goto :goto_3

    .line 144
    .end local v0    # "id":I
    .end local v1    # "remove":Landroid/os/Message;
    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 145
    .restart local v0    # "id":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 146
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already reigstered id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_3

    .line 150
    :cond_c
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 151
    .local v1, "add":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmMessageList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mAlarmManager:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    .line 154
    nop

    .line 225
    .end local v0    # "id":I
    .end local v1    # "add":Landroid/os/Message;
    :goto_3
    return-void
.end method

.method public init()V
    .locals 0

    .line 251
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/MiscHandler;->init()V

    .line 252
    return-void
.end method

.method public onAlarmCancelled(I)V
    .locals 3
    .param p1, "id"    # I

    .line 286
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlarmCancelled: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public onAlarmRequested(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "delay"    # I

    .line 280
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlarmRequested: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void
.end method

.method public registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForEcholocateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    return-void
.end method

.method public registerForXqMtripEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    return-void
.end method

.method public unregisterForEcholocateEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 262
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForEcholocateEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mEcholocateEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 264
    return-void
.end method

.method public unregisterForXqMtripEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;->mXqMtripEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 276
    return-void
.end method
