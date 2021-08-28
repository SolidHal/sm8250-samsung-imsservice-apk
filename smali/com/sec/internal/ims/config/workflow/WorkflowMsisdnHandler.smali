.class public Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;
.super Ljava/lang/Object;
.source "WorkflowMsisdnHandler.java"


# static fields
.field protected static final IS_NEEDED:Ljava/lang/String; = "isNeeded"

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final MSISDN_KEYS_ARRAY:Ljava/lang/String; = "msisdnArray"

.field protected static final MSISDN_MAX_TIMEOUT:J = 0x93a80L

.field protected static final MSISDN_VALUE:Ljava/lang/String; = "msisdnValue"

.field protected static final SET_SHOW_MSISDN_DIALOG:Ljava/lang/String; = "com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG"


# instance fields
.field protected mMsisdnKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0
    .param p1, "base"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected cancelMsisdnTimer(Landroid/os/CountDownTimer;Z)V
    .locals 3
    .param p1, "msisdnTimer"    # Landroid/os/CountDownTimer;
    .param p2, "disableDB"    # Z

    .line 137
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelMsisdnTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 141
    :cond_0
    if-eqz p2, :cond_1

    .line 142
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelMsisdnTimer: disable DB of START_MSISDN_TIMER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v1, "info/start_msisdn_timer"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    :cond_1
    return-void
.end method

.method protected expiredMsisdnTimer()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    .line 149
    .local v0, "userSetting":Z
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expiredMsisdnTimer: userSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getIsNeeded()Z

    move-result v2

    const-string v3, "isNeeded"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 155
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v3, "info/msisdn/msgui_display"

    const-string/jumbo v4, "true"

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v2, "info/start_msisdn_timer"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    return-void
.end method

.method protected getIsNeeded()Z
    .locals 1

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected getLastMsisdnValue()Ljava/lang/String;
    .locals 4

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "lastMsisdn":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msisdnValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastMsisdnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0
.end method

.method protected getMsisdnSkipCount()I
    .locals 5

    .line 47
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMsisdnSkipCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v2, "info/msisdn/skip_count"

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "skipCount":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 56
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 58
    :cond_0
    const/4 v0, -0x1

    .line 60
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMsisdnSkipCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v0
.end method

.method protected getStartMsisdnTime()J
    .locals 5

    .line 108
    const-wide/16 v0, 0x0

    .line 110
    .local v0, "result":J
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v3, "info/start_msisdn_timer"

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 114
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStartMsisdnTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-wide v0
.end method

.method protected setMsisdnMsguiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMsisdnMsguiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v1, "info/msisdn/msgui_display"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    return-void
.end method

.method protected setMsisdnSkipCount(I)V
    .locals 3
    .param p1, "count"    # I

    .line 65
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMsisdnSkipValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "info/msisdn/skip_count"

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    return-void
.end method

.method protected setMsisdnTimer(Landroid/os/CountDownTimer;)V
    .locals 7
    .param p1, "msisdnTimer"    # Landroid/os/CountDownTimer;

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getStartMsisdnTime()J

    move-result-wide v0

    .line 93
    .local v0, "startMsisdnTime":J
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startMsisdnTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 95
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "msisdn timer was already called, so skip"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 99
    .local v2, "current":Ljava/util/Date;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 100
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x240c8400

    add-long v0, v3, v5

    .line 101
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "info/start_msisdn_timer"

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    .line 104
    .local v3, "nextMsisdnTime":I
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->startMsisdnTimer(Landroid/os/CountDownTimer;I)V

    .line 105
    return-void
.end method

.method protected setMsisdnValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "msisdnValue"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsisdnValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msisdnValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "msisdnArray"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mMsisdnKeys:Ljava/util/Set;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->mMsisdnKeys:Ljava/util/Set;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method protected startMsisdnTimer(Landroid/os/CountDownTimer;I)V
    .locals 8
    .param p1, "msisdnTimer"    # Landroid/os/CountDownTimer;
    .param p2, "nextMsisdnTime"    # I

    .line 119
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start msisdnTimer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sec)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->cancelMsisdnTimer(Landroid/os/CountDownTimer;Z)V

    .line 121
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;

    int-to-long v1, p2

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    int-to-long v1, p2

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;JJI)V

    move-object p1, v0

    .line 133
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 134
    return-void
.end method
