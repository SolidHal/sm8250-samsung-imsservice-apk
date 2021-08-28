.class public Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;
.super Landroid/os/Handler;
.source "ImsDiagnosticMonitorNotificationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;


# static fields
.field private static final DATEFORMAT:Ljava/lang/String; = "MM.dd HH:mm:ss"

.field private static final EVENT_CHECK_PACKAGE_STATUS:I = 0x3

.field private static final EVENT_VOPS_CHANGED:I = 0x1

.field public static final IMS_DEBUG_INFO_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final IMS_DEBUG_INFO_TYPE:Ljava/lang/String; = "DebugInfoType"

.field public static final IMS_LOCAL_ADDRESS:Ljava/lang/String; = "LocalAddr"

.field public static final IMS_REMOTE_ADDRESS:Ljava/lang/String; = "RemoteAddr"

.field public static final IMS_SETTINGS_EVENT_CALL:I = 0x12

.field public static final IMS_SETTINGS_EVENT_DBR:I = 0xb

.field public static final IMS_SETTINGS_EVENT_REGI:I = 0x11

.field public static final IMS_SETTINGS_EVENT_SIP:I = 0x1

.field public static final IMS_SETTINGS_EVENT_VPOS:I = 0x5

.field public static final IMS_SIP_DIRECTION:Ljava/lang/String; = "Direction"

.field public static final IMS_SIP_MESSAGE:Ljava/lang/String; = "SipMsg"

.field public static final IMS_SIP_TYPE:Ljava/lang/String; = "SipType"

.field public static final IMS_VOLTE_VOPS_INDICATION:Ljava/lang/String; = "VoPSIndication"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsDiagMonitorNotiMgr"

.field private static final VOLTE_DEDICATED_BEARER_NOTIFY_EVENT:I = 0x2


# instance fields
.field private mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

.field private mPackageCheckCount:I

.field private mPdnStateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    .line 78
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    .line 79
    return-void
.end method

.method private checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v0

    return-object v0
.end method

.method private handleDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V
    .locals 3
    .param p1, "dedicated"    # Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v1

    const-string v2, "DedicatedBearerQosStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result v1

    const-string v2, "DedicatedBearerQosQCI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private handleUpdateVoPSIndication(Z)V
    .locals 3
    .param p1, "enabledVoPS"    # Z

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "i":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "VoPSIndication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 180
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 181
    .local v1, "data":[B
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 182
    .local v2, "checklen":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 183
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v7, v3, 0x1

    .line 184
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 182
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 186
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method private send(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "i"    # Landroid/content/Intent;

    .line 236
    const-string v0, "DebugInfoType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM.dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timestamp"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_1

    .line 120
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package was not installed, check again #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsDiagMonitorNotiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->initialize()V

    .line 128
    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->handleDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    .line 114
    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->handleUpdateVoPSIndication(Z)V

    .line 110
    nop

    .line 133
    :cond_4
    :goto_0
    return-void
.end method

.method public handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V
    .locals 3
    .param p1, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z

    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "regState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "profileName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "services"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const-string v2, "cmcType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    .line 218
    .end local v0    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 219
    :cond_0
    const-string v0, "ImsDiagMonitorNotiMgr"

    const-string/jumbo v1, "regInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 4

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    .line 84
    const/4 v1, 0x0

    const-string v2, "APN_ALREADY_ACTIVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "APN_REQUEST_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "APN_TYPE_NOT_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "APN_REQUEST_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "APN_ALREADY_INACTIVE"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method

.method public notifyCallStatus(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "callState"    # Ljava/lang/String;
    .param p3, "callType"    # I
    .param p4, "audioCodecName"    # Ljava/lang/String;

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "callState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "callType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v1, "audioCodec"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "notifyType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "msgType"    # I
    .param p4, "direction"    # I
    .param p5, "phoneId"    # I
    .param p6, "timestamp"    # Ljava/lang/String;
    .param p7, "localIp"    # Ljava/lang/String;
    .param p8, "remoteIp"    # Ljava/lang/String;
    .param p9, "hexContents"    # Ljava/lang/String;

    .line 147
    new-instance v11, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p2

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "notifyType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "msgType"    # I
    .param p4, "direction"    # I
    .param p5, "timestamp"    # Ljava/lang/String;
    .param p6, "localIp"    # Ljava/lang/String;
    .param p7, "remoteIp"    # Ljava/lang/String;
    .param p8, "hexContents"    # Ljava/lang/String;

    .line 139
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->send(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    return v0
.end method
