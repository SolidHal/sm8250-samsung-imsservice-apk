.class public Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.super Ljava/lang/Object;
.source "IpcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;,
        Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;,
        Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;
    }
.end annotation


# static fields
.field static final EVENT_SEC_CHANNEL_PROXY_DEAD:I = 0x1

.field private static final EVENT_SEND_IPC:I = 0x1

.field static final ISehChannel_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field private static final LOG_TAG:Ljava/lang/String; = "IpcDispatcher"

.field private static final SERVICE_NAME_IMS:Ljava/lang/String; = "imsd"

.field private static final SERVICE_NAME_IMS2:Ljava/lang/String; = "imsd2"

.field private static final VOLTE_TYPE_DUAL:I = 0x3

.field private static final VOLTE_TYPE_SINGLE:I = 0x1

.field private static mSupportVolteType:I


# instance fields
.field mImsSecChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

.field private mRegistrants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrantsForIilConnected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field

.field final mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

.field volatile mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

.field final mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mSecChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;

.field private mSender:Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 184
    const/4 v0, 0x3

    sput v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I

    .line 186
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpcDispatcher Support Volte Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcDispatcher"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    iput p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mImsSecChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

    .line 196
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    .line 197
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 27
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 27
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->resetProxy()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 27
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/iil/IpcDispatcher;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 152
    .local p0, "bytes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "messageLength":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 156
    .local v1, "lower":I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 158
    .local v3, "higher":I
    if-nez v3, :cond_0

    .line 159
    move v0, v1

    goto :goto_0

    .line 161
    :cond_0
    shl-int/lit8 v4, v3, 0x8

    add-int v0, v1, v4

    .line 163
    .end local v1    # "lower":I
    .end local v3    # "higher":I
    :goto_0
    nop

    .line 167
    new-array v1, v0, [B

    .line 168
    .local v1, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_1

    .line 169
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v3

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    .end local v3    # "i":I
    :cond_1
    return-object v1

    .line 164
    .end local v1    # "ret":[B
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .locals 6

    .line 89
    const-string v0, "IpcDispatcher"

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget v2, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSupportVolteType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    const-string v4, "imsd"

    if-ne v2, v3, :cond_2

    .line 95
    :try_start_1
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    if-nez v2, :cond_1

    .line 96
    invoke-static {v4}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "imsd2"

    invoke-static {v2}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {v4}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelProxyDeathRecipient;

    iget-object v4, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 104
    invoke-interface {v2, v3, v4, v5}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 107
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mImsSecChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

    invoke-interface {v2, v3}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->setCallback(Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback;)V

    .line 109
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v3, "notify IIL Connected"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Registrant;

    .line 111
    .local v3, "reg":Landroid/os/Registrant;
    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 112
    .end local v3    # "reg":Landroid/os/Registrant;
    goto :goto_1

    :cond_3
    goto :goto_2

    .line 114
    :cond_4
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v3, "getSecChannelProxy: mSecChannelProxy == null"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_2
    goto :goto_3

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 118
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecChannelProxy getService/setCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 125
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object v0
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arr"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 177
    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-object v0
.end method

.method private resetProxy()V
    .locals 1

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 137
    return-void
.end method


# virtual methods
.method handleSecChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 140
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpcDispatcher"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->resetProxy()V

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelHandler:Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSecChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 147
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 146
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 145
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$SecChannelHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    return-void
.end method

.method public initDipatcher()V
    .locals 3

    .line 201
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsModemSender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSenderThread:Landroid/os/HandlerThread;

    .line 202
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 204
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSender:Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

    .line 206
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 207
    return-void
.end method

.method processResponse([BI)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "ipcMsg":Lcom/sec/internal/ims/core/iil/IpcMessage;
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/iil/IpcMessage;->parseIpc([BI)Lcom/sec/internal/ims/core/iil/IpcMessage;

    move-result-object v0

    .line 223
    const-string v1, "IpcDispatcher"

    if-nez v0, :cond_0

    .line 224
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v3, "cannot parse ipc"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    return-void

    .line 228
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Rx]: (M)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (S)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (T)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->typeStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " l:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Rx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/iil/IpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 235
    .local v2, "reg":Landroid/os/Registrant;
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 236
    .end local v2    # "reg":Landroid/os/Registrant;
    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method

.method public sendGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .locals 4
    .param p1, "ipcErrorCause"    # I
    .param p2, "response"    # Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 303
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcMessage;

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/iil/IpcMessage;-><init>(III)V

    .line 305
    .local v0, "packet":Lcom/sec/internal/ims/core/iil/IpcMessage;
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcMessage;->encodeGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z

    .line 306
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result v1

    return v1
.end method

.method public sendGeneralResponse(ZLcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .locals 2
    .param p1, "result"    # Z
    .param p2, "response"    # Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 294
    if-eqz p1, :cond_0

    .line 295
    const v0, 0x8000

    .local v0, "ipcErrorCause":I
    goto :goto_0

    .line 297
    .end local v0    # "ipcErrorCause":I
    :cond_0
    const v0, 0x8005

    .line 299
    .restart local v0    # "ipcErrorCause":I
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->sendGeneralResponse(ILcom/sec/internal/ims/core/iil/IpcMessage;)Z

    move-result v1

    return v1
.end method

.method public sendMessage(Lcom/sec/internal/ims/core/iil/IpcMessage;)Z
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/iil/IpcMessage;

    .line 271
    const-string v0, "IpcDispatcher"

    if-nez p1, :cond_0

    .line 272
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string/jumbo v2, "send IPC message error"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->setDir(I)V

    .line 279
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: (M)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->mainCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (S)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->subCmdStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (T)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->typeStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " l:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Tx]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getBody()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/iil/IpcMessage;->dumpHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSender:Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/iil/IpcMessage;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, "ipcMsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    .end local v0    # "ipcMsg":Landroid/os/Message;
    :cond_1
    return v1
.end method

.method public setRegistrant(ILandroid/os/Handler;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrants:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Registrant;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public setRegistrantForIilConnected(ILandroid/os/Handler;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Registrant;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const/4 v0, 0x1

    return v0
.end method
