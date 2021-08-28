.class public Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
.super Landroid/os/Handler;
.source "CloudMessageBufferDBHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field protected mBufferDBloaded:Z

.field protected final mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

.field protected final mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

.field protected final mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

.field protected mIsGoforwardSync:Z

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

.field protected mProvisionSuccess:Z

.field protected mRCSDbReady:Z

.field protected final mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

.field protected final mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

.field protected final mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

.field protected final mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V
    .locals 24
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceDataListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
    .param p4, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    .line 73
    iput-boolean v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    .line 74
    nop

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 76
    iput-boolean v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    .line 81
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    .line 83
    new-instance v2, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    .line 84
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    .line 85
    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 86
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v4}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 87
    new-instance v4, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-direct {v4, v1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 88
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    move-object v6, v4

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    .line 90
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    move-object v12, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, p1

    invoke-direct/range {v12 .. v19}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 92
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, p1

    invoke-direct/range {v16 .. v23}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 94
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    move-object v11, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, p1

    invoke-direct/range {v11 .. v19}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 96
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, p1

    invoke-direct/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    .line 98
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    move-object v10, v4

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    .line 100
    new-instance v4, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    .line 102
    return-void
.end method

.method private getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 2
    .param p1, "syncType"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, "msgType":I
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const/16 v0, 0x15

    goto :goto_1

    .line 238
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    const/16 v0, 0x11

    goto :goto_1

    .line 240
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const/16 v0, 0x10

    goto :goto_1

    .line 242
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    const/16 v0, 0x12

    goto :goto_1

    .line 235
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 245
    :cond_5
    :goto_1
    return v0
.end method

.method private getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 801
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTableIndex, Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, -0x1

    .line 803
    .local v0, "tableIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "MSG_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "VVMDATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "GREETING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "CALLLOGDATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "PROFILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_5
    const-string v2, "VOICEMAILTOTEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_6
    const-string v2, "CHAT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_8
    const-string v2, "PIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "MMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_a
    const-string v2, "FAX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v2, "FT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_c
    const-string v2, "ACTIVATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_d
    const-string v2, "DEACTIVATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 839
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartFullSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StopSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 840
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 836
    :pswitch_0
    const/16 v0, 0x12

    .line 837
    goto :goto_3

    .line 833
    :pswitch_1
    const/16 v0, 0x14

    .line 834
    goto :goto_3

    .line 827
    :pswitch_2
    const/16 v0, 0x13

    .line 828
    goto :goto_3

    .line 824
    :pswitch_3
    const/16 v0, 0x11

    .line 825
    goto :goto_3

    .line 821
    :pswitch_4
    const/16 v0, 0x10

    .line 822
    goto :goto_3

    .line 818
    :pswitch_5
    const/4 v0, 0x0

    .line 819
    goto :goto_3

    .line 815
    :pswitch_6
    const/16 v0, 0x15

    .line 816
    goto :goto_3

    .line 812
    :pswitch_7
    const/4 v0, 0x1

    .line 813
    goto :goto_3

    .line 808
    :pswitch_8
    const/4 v0, 0x4

    .line 809
    goto :goto_3

    .line 805
    :pswitch_9
    const/4 v0, 0x3

    .line 806
    goto :goto_3

    .line 841
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 844
    :cond_2
    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a1a438c -> :sswitch_d
        -0x340e3b0d -> :sswitch_c
        0x8ce -> :sswitch_b
        0x10efd -> :sswitch_a
        0x12ab3 -> :sswitch_9
        0x13575 -> :sswitch_8
        0x14139 -> :sswitch_7
        0x1f8b58 -> :sswitch_6
        0x12846531 -> :sswitch_5
        0x185a1589 -> :sswitch_4
        0x18dba4b0 -> :sswitch_3
        0x3ae47039 -> :sswitch_2
        0x5c75a6b7 -> :sswitch_1
        0x7af6bfa3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 5
    .param p1, "elemt"    # Ljava/lang/String;
    .param p2, "tableIndex"    # I
    .param p3, "vvmchange"    # Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 985
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVvmChangeParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tableindex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " VvmTypeChange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 989
    .local v0, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    .line 990
    .local v1, "update":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    iput-object p3, v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 991
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    return-object v1

    .line 993
    .end local v1    # "update":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    :catch_0
    move-exception v1

    .line 994
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 8
    .param p1, "elemt"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "operation"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;
    .param p4, "tableIndex"    # I

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "vvmChange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "GREETING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "PROFILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_2
    const-string v2, "VOICEMAILTOTEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "PIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "ACTIVATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "DEACTIVATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_2

    .line 871
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, v1, p4, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v0

    .line 873
    goto :goto_2

    .line 867
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, v1, p4, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v0

    .line 869
    goto :goto_2

    .line 863
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, v1, p4, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v0

    .line 865
    goto :goto_2

    .line 859
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, v1, p4, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v0

    .line 861
    goto :goto_2

    .line 855
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, v1, p4, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v0

    .line 857
    goto :goto_2

    .line 851
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, v1, p4, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v0

    .line 853
    nop

    .line 877
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a1a438c -> :sswitch_5
        -0x340e3b0d -> :sswitch_4
        0x13575 -> :sswitch_3
        0x12846531 -> :sswitch_2
        0x185a1589 -> :sswitch_1
        0x3ae47039 -> :sswitch_0
    .end sparse-switch
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p3, "isgoforwardSync"    # Z

    .line 416
    nop

    .line 417
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 416
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 418
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isgoforwardSync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0xe

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc

    if-eq v0, v1, :cond_8

    goto/16 :goto_6

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 434
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 435
    .local v1, "mmsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 433
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 439
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 440
    .end local v1    # "mmsCs":Landroid/database/Cursor;
    :cond_3
    goto :goto_6

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 423
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 424
    .local v1, "smsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 425
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto :goto_2

    .line 428
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "inconsistency between buffer or duplicated nms event"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 430
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 431
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_6
    goto :goto_6

    .line 422
    .restart local v1    # "smsCs":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2

    .line 445
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 446
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 447
    .local v1, "rcsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_a

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 448
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 445
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_9

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v2

    .line 451
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 452
    .end local v1    # "rcsCs":Landroid/database/Cursor;
    :cond_b
    nop

    .line 456
    :goto_6
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p3, "isgoforwardSync"    # Z

    .line 561
    nop

    .line 562
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 561
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 563
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0xe

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc

    if-eq v0, v1, :cond_8

    goto/16 :goto_6

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 578
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 579
    .local v1, "mmsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 577
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 583
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 584
    .end local v1    # "mmsCs":Landroid/database/Cursor;
    :cond_3
    goto :goto_6

    .line 566
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 567
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 568
    .local v1, "smsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 569
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_2

    .line 572
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "inconsistency between buffer or duplicated nms event"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 574
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 575
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_6
    goto :goto_6

    .line 566
    .restart local v1    # "smsCs":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2

    .line 589
    .end local v1    # "smsCs":Landroid/database/Cursor;
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 590
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 591
    .local v1, "rcsCs":Landroid/database/Cursor;
    if-eqz v1, :cond_a

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 592
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 589
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_9

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v2

    .line 595
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 596
    .end local v1    # "rcsCs":Landroid/database/Cursor;
    :cond_b
    nop

    .line 600
    :goto_6
    return-void
.end method

.method private onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 4
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 1114
    nop

    .line 1115
    const-string v0, "messagetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1116
    .local v0, "type":I
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNmsEventExpiredObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I

    .line 1123
    goto :goto_0

    .line 1119
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I

    .line 1120
    goto :goto_0

    .line 1128
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    .line 1129
    nop

    .line 1133
    :goto_0
    return-void
.end method

.method private onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 19
    .param p1, "summaryCs"    # Landroid/database/Cursor;
    .param p2, "resurl"    # Ljava/lang/String;

    .line 297
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 298
    const-string/jumbo v0, "syncaction"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 297
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 299
    .local v4, "status":I
    nop

    .line 300
    const-string v0, "messagetype"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 299
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 301
    .local v11, "type":I
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUpdateBufferDBBulkUpdateSuccess,  status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " msgtype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-wide/16 v5, 0x0

    .line 304
    .local v5, "bufferdbId":J
    const/4 v7, 0x0

    .line 305
    .local v7, "line":Ljava/lang/String;
    const/4 v12, 0x0

    .line 306
    .local v12, "para":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    const/4 v13, 0x0

    .line 307
    .local v13, "isInconsistent":Z
    const/4 v0, 0x1

    const-string v8, "linenum"

    const-string v9, "_bufferdbid"

    if-eq v11, v0, :cond_14

    const/16 v0, 0x15

    if-eq v11, v0, :cond_10

    const/4 v0, 0x3

    if-eq v11, v0, :cond_c

    const/4 v0, 0x4

    if-eq v11, v0, :cond_8

    const/16 v0, 0x10

    if-eq v11, v0, :cond_4

    const/16 v0, 0x11

    if-eq v11, v0, :cond_0

    goto/16 :goto_12

    .line 373
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 374
    .local v15, "cs":Landroid/database/Cursor;
    if-eqz v15, :cond_2

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    nop

    .line 376
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 375
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    int-to-long v5, v0

    .line 377
    nop

    .line 378
    :try_start_1
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 377
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 379
    .end local v7    # "line":Ljava/lang/String;
    .local v10, "line":Ljava/lang/String;
    :try_start_2
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v16, 0x0

    move-wide/from16 v17, v5

    .end local v5    # "bufferdbId":J
    .local v17, "bufferdbId":J
    move-object v5, v9

    move v6, v11

    move-wide/from16 v7, v17

    move-object v14, v9

    move/from16 v9, v16

    :try_start_3
    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 380
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    move-object v12, v0

    .line 382
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v10

    move-wide/from16 v5, v17

    goto :goto_2

    .line 373
    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v7, v10

    move-wide/from16 v5, v17

    goto :goto_0

    .end local v17    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v5

    move-object v8, v0

    move-object v7, v10

    .end local v5    # "bufferdbId":J
    .restart local v17    # "bufferdbId":J
    goto :goto_0

    .end local v10    # "line":Ljava/lang/String;
    .end local v17    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v5

    move-object v8, v0

    .end local v5    # "bufferdbId":J
    .restart local v17    # "bufferdbId":J
    goto :goto_0

    .end local v17    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_3
    move-exception v0

    move-object v8, v0

    :goto_0
    if-eqz v15, :cond_1

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v8

    .line 384
    :cond_2
    const/4 v0, 0x1

    move v13, v0

    .line 386
    :goto_2
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 387
    .end local v15    # "cs":Landroid/database/Cursor;
    :cond_3
    goto/16 :goto_12

    .line 391
    :cond_4
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->queryCallLogMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 392
    .local v14, "cs":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    nop

    .line 394
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 393
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    int-to-long v5, v0

    .line 395
    nop

    .line 396
    :try_start_6
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 395
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 397
    .end local v7    # "line":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    :try_start_7
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/4 v9, 0x0

    move-wide/from16 v16, v5

    .end local v5    # "bufferdbId":J
    .local v16, "bufferdbId":J
    move-object v5, v15

    move v6, v11

    move-wide/from16 v7, v16

    :try_start_8
    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 398
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    move-object v12, v0

    .line 400
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_5

    .line 391
    :catchall_5
    move-exception v0

    move-object v8, v0

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_3

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_6
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    move-object v7, v10

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_3

    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_3

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_8
    move-exception v0

    move-object v8, v0

    :goto_3
    if-eqz v14, :cond_5

    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_4

    :catchall_9
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v8

    .line 402
    :cond_6
    const/4 v0, 0x1

    move v13, v0

    .line 404
    :goto_5
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 405
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_7
    goto/16 :goto_12

    .line 325
    :cond_8
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 326
    .restart local v14    # "cs":Landroid/database/Cursor;
    if-eqz v14, :cond_a

    :try_start_a
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 327
    nop

    .line 328
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 327
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    int-to-long v5, v0

    .line 329
    nop

    .line 330
    :try_start_b
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 329
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 331
    .end local v7    # "line":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    :try_start_c
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const/4 v9, 0x0

    move-wide/from16 v16, v5

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    move-object v5, v15

    move v6, v11

    move-wide/from16 v7, v16

    :try_start_d
    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 332
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    move-object v12, v0

    .line 334
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_8

    .line 325
    :catchall_a
    move-exception v0

    move-object v8, v0

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_6

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_b
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    move-object v7, v10

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_6

    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_c
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_6

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_d
    move-exception v0

    move-object v8, v0

    :goto_6
    if-eqz v14, :cond_9

    :try_start_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_7

    :catchall_e
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    throw v8

    .line 336
    :cond_a
    const/4 v0, 0x1

    move v13, v0

    .line 338
    :goto_8
    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 339
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_b
    goto/16 :goto_12

    .line 309
    :cond_c
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 310
    .restart local v14    # "cs":Landroid/database/Cursor;
    if-eqz v14, :cond_e

    :try_start_f
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 311
    nop

    .line 312
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 311
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_12

    int-to-long v5, v0

    .line 313
    nop

    .line 314
    :try_start_10
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 313
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    .line 315
    .end local v7    # "line":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    :try_start_11
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    const/4 v9, 0x0

    move-wide/from16 v16, v5

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    move-object v5, v15

    move v6, v11

    move-wide/from16 v7, v16

    :try_start_12
    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 316
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    move-object v12, v0

    .line 318
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_b

    .line 309
    :catchall_f
    move-exception v0

    move-object v8, v0

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_9

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_10
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    move-object v7, v10

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_9

    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_9

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_12
    move-exception v0

    move-object v8, v0

    :goto_9
    if-eqz v14, :cond_d

    :try_start_13
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto :goto_a

    :catchall_13
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_a
    throw v8

    .line 320
    :cond_e
    const/4 v0, 0x1

    move v13, v0

    .line 322
    :goto_b
    if-eqz v14, :cond_f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 323
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_f
    goto/16 :goto_12

    .line 357
    :cond_10
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->queryFaxMessageBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 358
    .restart local v14    # "cs":Landroid/database/Cursor;
    if-eqz v14, :cond_12

    :try_start_14
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 359
    nop

    .line 360
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 359
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_17

    int-to-long v5, v0

    .line 361
    nop

    .line 362
    :try_start_15
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 361
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    .line 363
    .end local v7    # "line":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    :try_start_16
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    const/4 v9, 0x0

    move-wide/from16 v16, v5

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    move-object v5, v15

    move v6, v11

    move-wide/from16 v7, v16

    :try_start_17
    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 364
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    move-object v12, v0

    .line 366
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_e

    .line 357
    :catchall_14
    move-exception v0

    move-object v8, v0

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_c

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_15
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    move-object v7, v10

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_c

    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_16
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_c

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_17
    move-exception v0

    move-object v8, v0

    :goto_c
    if-eqz v14, :cond_11

    :try_start_18
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    goto :goto_d

    :catchall_18
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    throw v8

    .line 368
    :cond_12
    const/4 v0, 0x1

    move v13, v0

    .line 370
    :goto_e
    if-eqz v14, :cond_13

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 371
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_13
    goto/16 :goto_12

    .line 341
    :cond_14
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 342
    .restart local v14    # "cs":Landroid/database/Cursor;
    if-eqz v14, :cond_16

    :try_start_19
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 343
    nop

    .line 344
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 343
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1c

    int-to-long v5, v0

    .line 345
    nop

    .line 346
    :try_start_1a
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 345
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1b

    .line 347
    .end local v7    # "line":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    :try_start_1b
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1a

    const/4 v9, 0x0

    move-wide/from16 v16, v5

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    move-object v5, v15

    move v6, v11

    move-wide/from16 v7, v16

    :try_start_1c
    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 348
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    move-object v12, v0

    .line 350
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_19

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_11

    .line 341
    :catchall_19
    move-exception v0

    move-object v8, v0

    move-object v7, v10

    move-wide/from16 v5, v16

    goto :goto_f

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_1a
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    move-object v7, v10

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_f

    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_1b
    move-exception v0

    move-wide/from16 v16, v5

    move-object v8, v0

    .end local v5    # "bufferdbId":J
    .restart local v16    # "bufferdbId":J
    goto :goto_f

    .end local v16    # "bufferdbId":J
    .restart local v5    # "bufferdbId":J
    :catchall_1c
    move-exception v0

    move-object v8, v0

    :goto_f
    if-eqz v14, :cond_15

    :try_start_1d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    goto :goto_10

    :catchall_1d
    move-exception v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_10
    throw v8

    .line 352
    :cond_16
    const/4 v0, 0x1

    move v13, v0

    .line 354
    :goto_11
    if-eqz v14, :cond_17

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 355
    .end local v14    # "cs":Landroid/database/Cursor;
    :cond_17
    nop

    .line 409
    :goto_12
    if-eqz v13, :cond_18

    .line 410
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v8, "inconsistency between buffer or duplicated nms event"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_18
    return-void
.end method

.method private processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 6
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    .line 1043
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processParamAppJsonList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 1047
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 1048
    .local v0, "changelist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1049
    .local v3, "param":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    iget v4, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    if-eq v4, v1, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1063
    :pswitch_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1064
    goto :goto_1

    .line 1069
    :pswitch_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1070
    goto :goto_1

    .line 1060
    :pswitch_2
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1061
    goto :goto_1

    .line 1051
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1052
    goto :goto_1

    .line 1054
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1055
    goto :goto_1

    .line 1057
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1058
    nop

    .line 1074
    .end local v3    # "param":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    :goto_1
    goto :goto_0

    .line 1075
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1076
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 1078
    :cond_5
    return-void

    .line 1045
    .end local v0    # "changelist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 7
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    .line 1086
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 1090
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processWipeOutList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1092
    .local v2, "item":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 1093
    .local v3, "line":Ljava/lang/String;
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    .line 1094
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v6, "MSG_ALL"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1095
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1096
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1097
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v4, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1098
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->wipeOutData(ILjava/lang/String;)V

    goto :goto_1

    .line 1099
    :cond_1
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    .line 1100
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v6, "CALLLOGDATA"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1101
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->wipeOutData(ILjava/lang/String;)V

    goto :goto_1

    .line 1102
    :cond_2
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    .line 1103
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "VVMDATA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1104
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1105
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1106
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1107
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1109
    .end local v2    # "item":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .end local v3    # "line":Ljava/lang/String;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 1110
    :cond_4
    return-void

    .line 1087
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected appFetchingFailedMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "syncDirection"    # Ljava/lang/String;

    .line 1136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1138
    .local v0, "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1139
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1136
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 1142
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1143
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1145
    .restart local v0    # "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1146
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 1143
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1

    .line 1149
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1150
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1152
    .restart local v0    # "cs":Landroid/database/Cursor;
    if-eqz v0, :cond_7

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1153
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 1150
    :catchall_4
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v1

    .line 1156
    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1157
    .end local v0    # "cs":Landroid/database/Cursor;
    :cond_8
    return-void
.end method

.method protected buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    .locals 13
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p2, "cs"    # Landroid/database/Cursor;
    .param p3, "type"    # I
    .param p4, "isGoforwardSync"    # Z
    .param p5, "isUpload"    # Z

    .line 106
    move-object v0, p1

    move-object v1, p2

    const-string v2, "_bufferdbid"

    if-eqz p5, :cond_2

    .line 107
    if-eqz v1, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    nop

    .line 110
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 109
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 111
    .local v3, "rowId":I
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v7, v3

    const/4 v10, 0x0

    move-object v5, v11

    move/from16 v6, p3

    move/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v3    # "rowId":I
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    :cond_1
    return-void

    .line 118
    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    :cond_3
    nop

    .line 121
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 120
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 122
    .local v3, "id":I
    nop

    .line 123
    const-string v4, "linenum"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 122
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "line":Ljava/lang/String;
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v7, v3

    move-object v5, v12

    move/from16 v6, p3

    move/from16 v9, p4

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v3    # "id":I
    .end local v4    # "line":Ljava/lang/String;
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    :cond_4
    return-void
.end method

.method protected cleanAllBufferDB()V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->cleanAllBufferDB()V

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->cleanAllBufferDB()V

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->cleanAllBufferDB()V

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    .line 766
    return-void
.end method

.method protected decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .locals 35
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "operation"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 882
    move-object/from16 v1, p0

    move-object/from16 v13, p3

    const-string v0, "correlationId"

    const-string v14, "correlationTag"

    const-string/jumbo v15, "preferred_line"

    const-string v11, "chatid"

    const-string v10, "id"

    const-string/jumbo v9, "type"

    const-string v8, "islocalonly"

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    move-object v7, v2

    .line 883
    .local v7, "parser":Lcom/google/gson/JsonParser;
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;-><init>()V

    move-object v6, v2

    .line 884
    .local v6, "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    const/4 v2, 0x0

    .line 886
    .local v2, "jsonElmt":Lcom/google/gson/JsonElement;
    const/16 v16, 0x0

    move-object/from16 v5, p2

    :try_start_0
    invoke-virtual {v7, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v17, v3

    .line 887
    .end local v2    # "jsonElmt":Lcom/google/gson/JsonElement;
    .local v17, "jsonElmt":Lcom/google/gson/JsonElement;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 888
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    move-object v4, v2

    .line 889
    .local v4, "jArray":Lcom/google/gson/JsonArray;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_f

    .line 890
    invoke-virtual {v4, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 891
    .local v2, "elemt":Lcom/google/gson/JsonElement;
    const-string v12, ""

    .line 893
    .local v12, "type":Ljava/lang/String;
    const/16 v18, 0x0

    .line 894
    .local v18, "correlationTag":Ljava/lang/String;
    const/16 v19, 0x0

    .line 895
    .local v19, "correlationId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 896
    .local v20, "rowId":I
    const/16 v21, 0x0

    .line 897
    .local v21, "line":Ljava/lang/String;
    const/16 v22, 0x0

    .line 898
    .local v22, "chatId":Ljava/lang/String;
    const/16 v23, 0x0

    .line 899
    .local v23, "vvmchange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    move/from16 v24, v3

    .end local v3    # "i":I
    .local v24, "i":I
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_1

    .line 901
    :try_start_2
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 902
    invoke-virtual {v3, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 903
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 904
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 905
    invoke-virtual {v3, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 906
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, "isLocal":Ljava/lang/String;
    move-object/from16 v25, v4

    .end local v4    # "jArray":Lcom/google/gson/JsonArray;
    .local v25, "jArray":Lcom/google/gson/JsonArray;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_2

    .line 908
    move-object/from16 v23, v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    goto/16 :goto_d

    .line 903
    .end local v3    # "isLocal":Ljava/lang/String;
    .end local v25    # "jArray":Lcom/google/gson/JsonArray;
    .restart local v4    # "jArray":Lcom/google/gson/JsonArray;
    :cond_0
    move-object/from16 v25, v4

    .end local v4    # "jArray":Lcom/google/gson/JsonArray;
    .restart local v25    # "jArray":Lcom/google/gson/JsonArray;
    goto :goto_1

    .line 976
    .end local v2    # "elemt":Lcom/google/gson/JsonElement;
    .end local v12    # "type":Ljava/lang/String;
    .end local v18    # "correlationTag":Ljava/lang/String;
    .end local v19    # "correlationId":Ljava/lang/String;
    .end local v20    # "rowId":I
    .end local v21    # "line":Ljava/lang/String;
    .end local v22    # "chatId":Ljava/lang/String;
    .end local v23    # "vvmchange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .end local v24    # "i":I
    .end local v25    # "jArray":Lcom/google/gson/JsonArray;
    :catch_0
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v2, v17

    goto/16 :goto_f

    .line 899
    .restart local v2    # "elemt":Lcom/google/gson/JsonElement;
    .restart local v4    # "jArray":Lcom/google/gson/JsonArray;
    .restart local v12    # "type":Ljava/lang/String;
    .restart local v18    # "correlationTag":Ljava/lang/String;
    .restart local v19    # "correlationId":Ljava/lang/String;
    .restart local v20    # "rowId":I
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v22    # "chatId":Ljava/lang/String;
    .restart local v23    # "vvmchange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .restart local v24    # "i":I
    :cond_1
    move-object/from16 v25, v4

    .line 911
    .end local v4    # "jArray":Lcom/google/gson/JsonArray;
    .restart local v25    # "jArray":Lcom/google/gson/JsonArray;
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v3, :cond_3

    .line 912
    :try_start_4
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_3

    .line 913
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v12, v3

    move-object v4, v12

    goto :goto_2

    .line 915
    :cond_3
    move-object v4, v12

    .end local v12    # "type":Ljava/lang/String;
    .local v4, "type":Ljava/lang/String;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v3, :cond_5

    .line 916
    :try_start_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 917
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 920
    :cond_4
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 921
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move/from16 v20, v3

    .end local v20    # "rowId":I
    .local v3, "rowId":I
    goto :goto_4

    .line 918
    .end local v3    # "rowId":I
    .restart local v20    # "rowId":I
    :cond_5
    :goto_3
    const/4 v3, 0x0

    move/from16 v20, v3

    .line 923
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v3, :cond_7

    .line 924
    :try_start_8
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 925
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    .line 928
    :cond_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 929
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v22, v3

    .end local v22    # "chatId":Ljava/lang/String;
    .local v3, "chatId":Ljava/lang/String;
    goto :goto_6

    .line 926
    .end local v3    # "chatId":Ljava/lang/String;
    .restart local v22    # "chatId":Ljava/lang/String;
    :cond_7
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v22, v3

    .line 931
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v3, :cond_9

    .line 933
    :try_start_a
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 934
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 935
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    .line 939
    :cond_8
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 940
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 941
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 939
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v21, v3

    .end local v21    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    goto :goto_8

    .line 936
    .end local v3    # "line":Ljava/lang/String;
    .restart local v21    # "line":Ljava/lang/String;
    :cond_9
    :goto_7
    :try_start_b
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    .line 937
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    .line 943
    :goto_8
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v3, :cond_b

    .line 945
    :try_start_c
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 946
    invoke-virtual {v3, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 947
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    .line 950
    :cond_a
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 951
    invoke-virtual {v3, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 952
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    move-object/from16 v18, v3

    .end local v18    # "correlationTag":Ljava/lang/String;
    .local v3, "correlationTag":Ljava/lang/String;
    goto :goto_a

    .line 948
    .end local v3    # "correlationTag":Ljava/lang/String;
    .restart local v18    # "correlationTag":Ljava/lang/String;
    :cond_b
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v18, v3

    .line 954
    :goto_a
    :try_start_d
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v3, :cond_d

    .line 956
    :try_start_e
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 957
    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 958
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_b

    .line 961
    :cond_c
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 962
    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 963
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v19, v3

    .end local v19    # "correlationId":Ljava/lang/String;
    .local v3, "correlationId":Ljava/lang/String;
    goto :goto_c

    .line 959
    .end local v3    # "correlationId":Ljava/lang/String;
    .restart local v19    # "correlationId":Ljava/lang/String;
    :cond_d
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v19, v3

    .line 965
    :goto_c
    :try_start_f
    invoke-direct {v1, v4, v13}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I

    move-result v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 966
    .local v3, "tableIndex":I
    const/4 v12, -0x1

    if-ne v3, v12, :cond_e

    .line 967
    :try_start_10
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v8, "decodeJson: Invalid tableindex"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 968
    return-object v16

    .line 970
    :cond_e
    :try_start_11
    invoke-direct {v1, v2, v4, v13, v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v12

    .line 971
    .end local v23    # "vvmchange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .local v12, "vvmchange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    move-object/from16 v26, v2

    .end local v2    # "elemt":Lcom/google/gson/JsonElement;
    .local v26, "elemt":Lcom/google/gson/JsonElement;
    move-object v2, v1

    move/from16 v27, v3

    .end local v3    # "tableIndex":I
    .local v27, "tableIndex":I
    move-object/from16 v3, p1

    move-object/from16 v28, v4

    .end local v4    # "type":Ljava/lang/String;
    .local v28, "type":Ljava/lang/String;
    move/from16 v5, v27

    move-object/from16 v29, v6

    .end local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .local v29, "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    move/from16 v6, v20

    move-object/from16 v30, v7

    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .local v30, "parser":Lcom/google/gson/JsonParser;
    move-object/from16 v7, v22

    move-object/from16 v31, v8

    move-object/from16 v8, v18

    move-object/from16 v32, v9

    move-object/from16 v9, v19

    move-object/from16 v33, v10

    move-object/from16 v10, p3

    move-object/from16 v34, v11

    move-object/from16 v11, v21

    :try_start_12
    invoke-direct/range {v2 .. v12}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    .line 889
    .end local v12    # "vvmchange":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .end local v18    # "correlationTag":Ljava/lang/String;
    .end local v19    # "correlationId":Ljava/lang/String;
    .end local v20    # "rowId":I
    .end local v21    # "line":Ljava/lang/String;
    .end local v22    # "chatId":Ljava/lang/String;
    .end local v26    # "elemt":Lcom/google/gson/JsonElement;
    .end local v27    # "tableIndex":I
    .end local v28    # "type":Ljava/lang/String;
    :goto_d
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v33

    move-object/from16 v11, v34

    .end local v24    # "i":I
    .local v3, "i":I
    goto/16 :goto_0

    .line 976
    .end local v3    # "i":I
    .end local v25    # "jArray":Lcom/google/gson/JsonArray;
    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_f

    .line 889
    .end local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v30    # "parser":Lcom/google/gson/JsonParser;
    .restart local v3    # "i":I
    .local v4, "jArray":Lcom/google/gson/JsonArray;
    .restart local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v7    # "parser":Lcom/google/gson/JsonParser;
    :cond_f
    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .end local v3    # "i":I
    .end local v4    # "jArray":Lcom/google/gson/JsonArray;
    .end local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .restart local v24    # "i":I
    .restart local v25    # "jArray":Lcom/google/gson/JsonArray;
    .restart local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v30    # "parser":Lcom/google/gson/JsonParser;
    goto :goto_e

    .line 887
    .end local v24    # "i":I
    .end local v25    # "jArray":Lcom/google/gson/JsonArray;
    .end local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v30    # "parser":Lcom/google/gson/JsonParser;
    .restart local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v7    # "parser":Lcom/google/gson/JsonParser;
    :cond_10
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 979
    .end local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .restart local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v30    # "parser":Lcom/google/gson/JsonParser;
    :goto_e
    nop

    .line 980
    return-object v29

    .line 976
    .end local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v30    # "parser":Lcom/google/gson/JsonParser;
    .restart local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v7    # "parser":Lcom/google/gson/JsonParser;
    :catch_2
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v2, v17

    .end local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .restart local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v30    # "parser":Lcom/google/gson/JsonParser;
    goto :goto_f

    .end local v17    # "jsonElmt":Lcom/google/gson/JsonElement;
    .end local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v30    # "parser":Lcom/google/gson/JsonParser;
    .local v2, "jsonElmt":Lcom/google/gson/JsonElement;
    .restart local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v7    # "parser":Lcom/google/gson/JsonParser;
    :catch_3
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 977
    .end local v6    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v29    # "chgList":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .restart local v30    # "parser":Lcom/google/gson/JsonParser;
    :goto_f
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JsonSyntaxException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-object v16
.end method

.method protected fetchingPendingMsg()V
    .locals 5

    .line 1160
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "syncDirection":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1164
    .local v1, "cs":Landroid/database/Cursor;
    const-string v2, "MessageApp"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1165
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v4, "SMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1162
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

    .line 1168
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1169
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1171
    .restart local v1    # "cs":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1172
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const-string v4, "MMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 1169
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2

    .line 1175
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1176
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1178
    .restart local v1    # "cs":Landroid/database/Cursor;
    if-eqz v1, :cond_7

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1179
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const-string v4, "CHAT"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 1176
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v2

    .line 1182
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1183
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_8
    return-void
.end method

.method protected handleBufferDbReadMessageJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 1035
    return-void
.end method

.method protected handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBulkDeleteSingleUrlSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez p1, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 293
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_3
    return-void
.end method

.method protected handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    .locals 17
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "downloadlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p3, "isgoforwardSync"    # Z

    .line 488
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p3

    iget-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 489
    .local v10, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 490
    .local v3, "isObjFoundInbufferDb":Z
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 491
    .local v11, "summaryCs":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    const-string/jumbo v0, "syncaction"

    .line 493
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 492
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 494
    .local v0, "status":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCloudNotifyChangedObj, Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-ne v0, v4, :cond_1

    .line 556
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_0
    return-void

    .line 498
    :cond_1
    :try_start_1
    invoke-direct {v1, v11, v2, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    .line 499
    .end local v0    # "status":I
    goto/16 :goto_7

    .line 500
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v4

    move-wide v12, v4

    .line 502
    .local v12, "rowId":J
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v10, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    move v14, v0

    .line 504
    .local v14, "initSynStatuc":I
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    if-eq v14, v0, :cond_4

    .line 505
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 556
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_3
    return-void

    .line 510
    :cond_4
    :try_start_2
    iget-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 511
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloudNotifyChangedObj RCS CloudUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-object v4, v0

    .line 514
    .local v4, "csRcs":Landroid/database/Cursor;
    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 515
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v12, v13, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 517
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, v4, v2, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "isObjFoundInbufferDb":Z
    .local v0, "isObjFoundInbufferDb":Z
    goto :goto_1

    .line 513
    .end local v0    # "isObjFoundInbufferDb":Z
    .restart local v3    # "isObjFoundInbufferDb":Z
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "isObjFoundInbufferDb":Z
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local p3    # "isgoforwardSync":Z
    :cond_5
    :goto_0
    throw v5

    .line 521
    .restart local v3    # "isObjFoundInbufferDb":Z
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .restart local p3    # "isgoforwardSync":Z
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 523
    .end local v4    # "csRcs":Landroid/database/Cursor;
    :cond_7
    if-nez v3, :cond_a

    iget-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 524
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloudNotifyChangedObj MMS CloudUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v4, v0

    .line 528
    .local v4, "csMms":Landroid/database/Cursor;
    if-eqz v4, :cond_9

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 529
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v5, 0x4

    invoke-virtual {v0, v12, v13, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 531
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, v4, v2, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 533
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "isObjFoundInbufferDb":Z
    .restart local v0    # "isObjFoundInbufferDb":Z
    goto :goto_3

    .line 526
    .end local v0    # "isObjFoundInbufferDb":Z
    .restart local v3    # "isObjFoundInbufferDb":Z
    :catchall_2
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_8

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "isObjFoundInbufferDb":Z
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local p3    # "isgoforwardSync":Z
    :cond_8
    :goto_2
    throw v5

    .line 535
    .restart local v3    # "isObjFoundInbufferDb":Z
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .restart local p3    # "isgoforwardSync":Z
    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 537
    .end local v4    # "csMms":Landroid/database/Cursor;
    :cond_a
    if-nez v3, :cond_d

    iget-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 538
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCloudNotifyChangedObj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object v4, v0

    .line 541
    .local v4, "cs":Landroid/database/Cursor;
    if-eqz v4, :cond_c

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 542
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v5, 0x3

    invoke-virtual {v0, v12, v13, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 544
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, v4, v2, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 546
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "isObjFoundInbufferDb":Z
    .restart local v0    # "isObjFoundInbufferDb":Z
    goto :goto_5

    .line 539
    .end local v0    # "isObjFoundInbufferDb":Z
    .restart local v3    # "isObjFoundInbufferDb":Z
    :catchall_4
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_b

    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "isObjFoundInbufferDb":Z
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .end local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local p3    # "isgoforwardSync":Z
    :cond_b
    :goto_4
    throw v5

    .line 548
    .restart local v3    # "isObjFoundInbufferDb":Z
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .restart local p2    # "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .restart local p3    # "isgoforwardSync":Z
    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 550
    .end local v4    # "cs":Landroid/database/Cursor;
    :cond_d
    move v15, v3

    .end local v3    # "isObjFoundInbufferDb":Z
    .local v15, "isObjFoundInbufferDb":Z
    if-nez v9, :cond_e

    if-nez v15, :cond_e

    .line 551
    move-object/from16 v8, p2

    :try_start_c
    iget-object v0, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v4, 0x7

    move-object v3, v7

    move-wide v5, v12

    move-object/from16 v16, v7

    move/from16 v7, p3

    move-object v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_6

    .line 490
    .end local v12    # "rowId":J
    .end local v14    # "initSynStatuc":I
    :catchall_6
    move-exception v0

    move-object v4, v0

    move v3, v15

    goto :goto_8

    .line 556
    :cond_e
    :goto_6
    move v3, v15

    .end local v15    # "isObjFoundInbufferDb":Z
    .restart local v3    # "isObjFoundInbufferDb":Z
    :goto_7
    if-eqz v11, :cond_f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 557
    .end local v11    # "summaryCs":Landroid/database/Cursor;
    :cond_f
    return-void

    .line 490
    .restart local v11    # "summaryCs":Landroid/database/Cursor;
    :catchall_7
    move-exception v0

    move-object v4, v0

    :goto_8
    if-eqz v11, :cond_10

    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_9
    throw v4
.end method

.method protected handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 10
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .param p2, "isgoforwardSync"    # Z

    .line 644
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 646
    .local v1, "isObjFoundInbufferDb":Z
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 647
    .local v2, "summaryCs":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 648
    const-string/jumbo v3, "syncaction"

    .line 649
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 648
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 650
    .local v3, "status":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCloudNotifyDeletedObj, Status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne v3, v4, :cond_1

    .line 715
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 652
    :cond_0
    return-void

    .line 654
    :cond_1
    :try_start_1
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 655
    .end local v3    # "status":I
    goto/16 :goto_8

    .line 656
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 658
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v3, v0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v3

    .line 660
    .local v3, "initSynStatuc":I
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 661
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v5, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 715
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_3
    return-void

    .line 666
    :cond_4
    :try_start_2
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const-string v5, "did not find buffer item to delete"

    if-eqz v4, :cond_7

    .line 667
    :try_start_3
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyDeletedObj RCS CloudUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-wide/16 v6, -0x1

    .line 670
    .local v6, "rowId":J
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 671
    .local v4, "csRcs":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 672
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 674
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v8, v4, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 676
    const/4 v1, 0x1

    goto :goto_0

    .line 678
    :cond_5
    sget-object v8, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 680
    :goto_0
    if-eqz v4, :cond_7

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    .line 670
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_7
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "isObjFoundInbufferDb":Z
    .end local v2    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .end local p2    # "isgoforwardSync":Z
    :cond_6
    :goto_1
    throw v5

    .line 682
    .end local v4    # "csRcs":Landroid/database/Cursor;
    .end local v6    # "rowId":J
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "isObjFoundInbufferDb":Z
    .restart local v2    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .restart local p2    # "isgoforwardSync":Z
    :cond_7
    :goto_2
    if-nez v1, :cond_a

    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 683
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyDeletedObj MMS CloudUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-wide/16 v6, -0x1

    .line 686
    .restart local v6    # "rowId":J
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 688
    .local v4, "csMms":Landroid/database/Cursor;
    if-eqz v4, :cond_8

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 689
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v9, 0x4

    invoke-virtual {v8, v6, v7, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 691
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v8, v4, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 693
    const/4 v1, 0x1

    goto :goto_3

    .line 695
    :cond_8
    sget-object v8, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 697
    :goto_3
    if-eqz v4, :cond_a

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_5

    .line 686
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_9

    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v8

    :try_start_b
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "isObjFoundInbufferDb":Z
    .end local v2    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .end local p2    # "isgoforwardSync":Z
    :cond_9
    :goto_4
    throw v5

    .line 699
    .end local v4    # "csMms":Landroid/database/Cursor;
    .end local v6    # "rowId":J
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "isObjFoundInbufferDb":Z
    .restart local v2    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .restart local p2    # "isgoforwardSync":Z
    :cond_a
    :goto_5
    if-nez v1, :cond_d

    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 700
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-wide/16 v6, -0x1

    .line 702
    .restart local v6    # "rowId":J
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 704
    .local v4, "cs":Landroid/database/Cursor;
    if-eqz v4, :cond_b

    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 705
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 707
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v5, v4, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_6

    .line 710
    :cond_b
    sget-object v8, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 712
    :goto_6
    if-eqz v4, :cond_d

    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_8

    .line 702
    :catchall_4
    move-exception v5

    if-eqz v4, :cond_c

    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v8

    :try_start_f
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "isObjFoundInbufferDb":Z
    .end local v2    # "summaryCs":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .end local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .end local p2    # "isgoforwardSync":Z
    :cond_c
    :goto_7
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 715
    .end local v3    # "initSynStatuc":I
    .end local v4    # "cs":Landroid/database/Cursor;
    .end local v6    # "rowId":J
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "isObjFoundInbufferDb":Z
    .restart local v2    # "summaryCs":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
    .restart local p1    # "objt":Lcom/sec/internal/omanetapi/nms/data/DeletedObject;
    .restart local p2    # "isgoforwardSync":Z
    :cond_d
    :goto_8
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 716
    .end local v2    # "summaryCs":Landroid/database/Cursor;
    :cond_e
    return-void

    .line 646
    .restart local v2    # "summaryCs":Landroid/database/Cursor;
    :catchall_6
    move-exception v3

    if-eqz v2, :cond_f

    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw v3
.end method

.method protected handleDeleteMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1020
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1021
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1022
    return-void
.end method

.method protected handleDownloadMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1030
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1031
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1032
    return-void
.end method

.method protected handleExpiredObject(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 5
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 604
    .local v0, "summaryCs":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 605
    const-string/jumbo v1, "syncaction"

    .line 606
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 605
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 607
    .local v1, "status":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExpiredObject, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 614
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_0
    return-void

    .line 611
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 612
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->deleteSummaryDBwithResUrl(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 603
    .end local v1    # "status":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 614
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 615
    .end local v0    # "summaryCs":Landroid/database/Cursor;
    :cond_4
    return-void
.end method

.method protected handleReadMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1010
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1011
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1012
    return-void
.end method

.method protected handleReceivedMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1000
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1001
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1002
    return-void
.end method

.method protected handleSentMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1005
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Sent:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1006
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1007
    return-void
.end method

.method protected handleUnReadMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1015
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1016
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1017
    return-void
.end method

.method protected handleUploadMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1025
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Upload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1026
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1027
    return-void
.end method

.method protected handleWipeOutMessageJson(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 1038
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->WipeOut:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1039
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 1040
    return-void
.end method

.method protected notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 10
    .param p1, "linenum"    # Ljava/lang/String;
    .param p2, "syncType"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p3, "isGoforwardSync"    # Z

    .line 250
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 251
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresMsgUploadInInitSync()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v1

    .line 254
    .local v1, "messageType":I
    if-ltz v1, :cond_0

    .line 255
    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v4, 0x0

    move-object v2, v9

    move v3, v1

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 260
    return-void

    .line 262
    .end local v1    # "messageType":I
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v7

    .line 263
    .local v7, "cs":Landroid/database/Cursor;
    const/4 v4, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 264
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 265
    .end local v7    # "cs":Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v7

    .line 266
    .restart local v7    # "cs":Landroid/database/Cursor;
    const/4 v4, 0x4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, p3

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 267
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 268
    .end local v7    # "cs":Landroid/database/Cursor;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v7

    .line 269
    .restart local v7    # "cs":Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, p3

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 271
    .end local v7    # "cs":Landroid/database/Cursor;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object v7

    .line 272
    .restart local v7    # "cs":Landroid/database/Cursor;
    const/16 v4, 0xd

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, p3

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v7    # "cs":Landroid/database/Cursor;
    :cond_5
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 275
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 277
    :cond_6
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v2, v8

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 282
    :goto_0
    return-void

    .line 271
    .restart local v7    # "cs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v1

    .line 268
    :catchall_2
    move-exception v1

    if-eqz v7, :cond_8

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1

    .line 265
    :catchall_4
    move-exception v1

    if-eqz v7, :cond_9

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw v1

    .line 262
    :catchall_6
    move-exception v1

    if-eqz v7, :cond_a

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw v1
.end method

.method protected onHandlePendingNmsEvent()V
    .locals 11

    .line 719
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 720
    .local v0, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->queryAllPendingNmsEventInSummaryDB()Landroid/database/Cursor;

    move-result-object v1

    .line 721
    .local v1, "nmsEventCusor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "NmsEvent sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    const-string v2, "_bufferdbid"

    .line 725
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 724
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 726
    .local v2, "rowId":I
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v5, 0x7

    int-to-long v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    nop

    .end local v2    # "rowId":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    .line 720
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2

    .line 731
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 732
    .end local v1    # "nmsEventCusor":Landroid/database/Cursor;
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 733
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 735
    :cond_4
    return-void
.end method

.method protected onSendCloudUnSyncedUpdate()V
    .locals 8

    .line 177
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 178
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToCloudUnsyncedSms()Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, "sms":Landroid/database/Cursor;
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 180
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v7    # "sms":Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToCloudUnsyncedMms()Landroid/database/Cursor;

    move-result-object v7

    .line 182
    .local v7, "mms":Landroid/database/Cursor;
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 183
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 184
    .end local v7    # "mms":Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v7

    .line 185
    .local v7, "rcs":Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    .end local v7    # "rcs":Landroid/database/Cursor;
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 190
    :cond_3
    return-void

    .line 184
    .restart local v7    # "rcs":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1

    .line 181
    .local v7, "mms":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    if-eqz v7, :cond_5

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1

    .line 178
    .local v7, "sms":Landroid/database/Cursor;
    :catchall_4
    move-exception v1

    if-eqz v7, :cond_6

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v1
.end method

.method protected onSendDeviceUnSyncedUpdate()V
    .locals 10

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToDeviceUnsyncedSms()Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, "sms":Landroid/database/Cursor;
    const/4 v1, 0x0

    const-string v2, "MessageApp"

    const-string v3, "_bufferdbid"

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    :cond_0
    nop

    .line 197
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 196
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 198
    .local v4, "id":I
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v7, 0x3

    .line 200
    invoke-virtual {v6, v7, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v4

    .line 198
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 202
    .end local v4    # "id":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 204
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v0    # "sms":Landroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnsyncedMms()Landroid/database/Cursor;

    move-result-object v0

    .line 206
    .local v0, "mms":Landroid/database/Cursor;
    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 208
    :cond_4
    nop

    .line 209
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 208
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 210
    .restart local v4    # "id":I
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v7, 0x4

    .line 212
    invoke-virtual {v6, v7, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v4

    .line 210
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    .end local v4    # "id":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_4

    goto :goto_3

    .line 205
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1

    .line 216
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 217
    .end local v0    # "mms":Landroid/database/Cursor;
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v0

    .line 218
    .local v0, "rcs":Landroid/database/Cursor;
    if-eqz v0, :cond_b

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 220
    :cond_8
    nop

    .line 221
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 220
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 222
    .restart local v4    # "id":I
    const-string v5, "is_filetransfer"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    move v5, v6

    goto :goto_4

    :cond_9
    move v5, v1

    .line 223
    .local v5, "isRCSFT":Z
    :goto_4
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 225
    invoke-virtual {v8, v6, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v8, v4

    .line 223
    invoke-virtual {v7, v2, v6, v8, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 227
    .end local v4    # "id":I
    .end local v5    # "isRCSFT":Z
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v4, :cond_8

    goto :goto_6

    .line 217
    :catchall_4
    move-exception v1

    if-eqz v0, :cond_a

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    throw v1

    .line 229
    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    .end local v0    # "rcs":Landroid/database/Cursor;
    :cond_c
    return-void
.end method

.method protected onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 13
    .param p1, "linenum"    # Ljava/lang/String;
    .param p2, "syncType"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p3, "isGoforwardSync"    # Z

    .line 132
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v10, v0

    .line 133
    .local v10, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v11

    .line 135
    .local v11, "messageType":I
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 150
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedVvm(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 152
    .local v12, "vvm":Landroid/database/Cursor;
    const/16 v4, 0x11

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v12

    move/from16 v5, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v12    # "vvm":Landroid/database/Cursor;
    :cond_1
    goto/16 :goto_6

    .restart local v12    # "vvm":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_2

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 154
    .end local v12    # "vvm":Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->queryToDeviceUnDownloadedFax(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 156
    .local v12, "fax":Landroid/database/Cursor;
    const/16 v4, 0x15

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v12

    move/from16 v5, p3

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 157
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 155
    .end local v12    # "fax":Landroid/database/Cursor;
    :cond_4
    goto/16 :goto_6

    .restart local v12    # "fax":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_5

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1

    .line 158
    .end local v12    # "fax":Landroid/database/Cursor;
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedGreeting(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 160
    .local v12, "grtcs":Landroid/database/Cursor;
    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v12

    move/from16 v5, p3

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 161
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 159
    .end local v12    # "grtcs":Landroid/database/Cursor;
    :cond_7
    goto/16 :goto_6

    .restart local v12    # "grtcs":Landroid/database/Cursor;
    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_8

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1

    .line 162
    .end local v12    # "grtcs":Landroid/database/Cursor;
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 163
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object v1, v12

    move/from16 v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 136
    :cond_a
    :goto_3
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 137
    .local v12, "mms":Landroid/database/Cursor;
    if-eqz v12, :cond_d

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    :cond_b
    const-string v0, "_bufferdbid"

    .line 140
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 139
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 141
    .local v0, "id":I
    const-string v1, "linenum"

    .line 142
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 141
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "line":Ljava/lang/String;
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    int-to-long v3, v0

    move-object v2, v10

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V

    .line 144
    .end local v0    # "id":I
    .end local v5    # "line":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v0, :cond_b

    goto :goto_5

    .line 136
    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_c

    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v1

    .line 146
    :cond_d
    :goto_5
    if-eqz v12, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 147
    .end local v12    # "mms":Landroid/database/Cursor;
    :cond_e
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 148
    .local v12, "rcs":Landroid/database/Cursor;
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move-object v3, v12

    move/from16 v5, p3

    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 149
    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 147
    .end local v12    # "rcs":Landroid/database/Cursor;
    :cond_f
    nop

    .line 168
    :cond_10
    :goto_6
    if-ltz v11, :cond_11

    const/16 v0, 0x10

    if-eq v11, v0, :cond_11

    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    .line 169
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v12, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    move-object v1, v12

    move v2, v11

    move/from16 v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_11
    iget-object v0, v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 172
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v10}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 174
    :cond_12
    return-void

    .line 147
    .restart local v12    # "rcs":Landroid/database/Cursor;
    :catchall_8
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_13

    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_7
    throw v1
.end method

.method protected setBufferDBLoaded(Z)V
    .locals 2
    .param p1, "isLoaded"    # Z

    .line 1081
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 1082
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveBufferDbLoaded(Z)V

    .line 1083
    return-void
.end method

.method protected startGoForwardSyncDbCopyTask()V
    .locals 5

    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v0, "cvFlags":Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 740
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 739
    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 742
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 741
    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v1

    .line 744
    .local v1, "smsCursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 745
    sget-object v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 743
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

    .line 749
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 750
    .end local v1    # "smsCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object v1

    .line 751
    .local v1, "pduCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 752
    sget-object v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 750
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2

    .line 755
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 756
    .end local v1    # "pduCursor":Landroid/database/Cursor;
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->syncReadSmsFromTelephony()V

    .line 757
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->syncReadMmsFromTelephony()V

    .line 758
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    .line 759
    return-void
.end method

.method protected startInitialSyncDBCopyTask()V
    .locals 6

    .line 769
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB()V

    .line 770
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v0, "cvFlags":Landroid/content/ContentValues;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "linenum":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 773
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 774
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 773
    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 776
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 775
    const-string/jumbo v3, "syncaction"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryAllSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v2

    .line 778
    .local v2, "smsCursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 779
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v5, "SMS DB loading"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v4, v2, v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 777
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3

    .line 783
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 785
    .end local v2    # "smsCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryAllMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object v2

    .line 786
    .local v2, "pduCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 787
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v5, "MMS DB loading"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v4, v2, v0, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 785
    :catchall_2
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v3

    .line 790
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 791
    .end local v2    # "pduCursor":Landroid/database/Cursor;
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->queryAllSession()Landroid/database/Cursor;

    move-result-object v2

    .line 792
    .local v2, "rcsCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_7

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 793
    sget-object v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "RCS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 791
    :catchall_4
    move-exception v3

    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v3

    .line 796
    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 797
    .end local v2    # "rcsCursor":Landroid/database/Cursor;
    :cond_8
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    .line 798
    return-void
.end method
