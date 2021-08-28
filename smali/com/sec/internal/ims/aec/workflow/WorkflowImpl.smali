.class public abstract Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.super Landroid/os/Handler;
.source "WorkflowImpl.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
    }
.end annotation


# static fields
.field private static final TIMEOUT_PUSH_MSG:I = 0x7530

.field private static final TIMEOUT_WAKELOCK:I = 0x15f90


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

.field protected mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

.field private final mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

.field protected mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

.field private mIsEntitlementOngoing:Z

.field private mIsPsDataRoaming:Z

.field private mIsReadyToNotifyApp:Z

.field private mIsSharedAkaToken:Z

.field private mIsValidEntitlement:Z

.field private final mModuleHandler:Landroid/os/Handler;

.field protected mNotifState:Ljava/lang/String;

.field protected mPhoneId:I

.field protected mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

.field private mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

.field private mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "moduleHandler"    # Landroid/os/Handler;
    .param p4, "logTag"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 40
    const-string v1, "NOT_READY"

    iput-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsPsDataRoaming:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    .line 63
    iput-object p4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private checkSimSwapped(Ljava/lang/String;)V
    .locals 5
    .param p1, "currentImsi"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "identical sim, recover to the stored configuration"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "sim swapped, revert to the default configuration"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setImsi(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 103
    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStoredConfiguration()Landroid/os/Bundle;

    move-result-object v4

    .line 102
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method

.method private getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "timeStamp"    # Ljava/lang/String;

    .line 354
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 355
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 356
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private onCompletedEapChallengeResp(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v2, "onCompletedEapChallengeResp: no eap challenge response"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletedEapChallengeResp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendEmptyMessage(I)Z

    .line 216
    :goto_0
    return-void
.end method

.method private onCompletedWorkFlow()V
    .locals 5

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendEmptyMessage(I)Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    const-string v1, "0"

    if-lez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersionValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startVersionValidityTimer(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getTokenValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startTokenValidityTimer(I)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 196
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStoredConfiguration()Landroid/os/Bundle;

    move-result-object v0

    .line 197
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletedWorkFlow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 200
    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v4

    .line 199
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method

.method private onRequestFcmToken()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    const-string v1, "IN_PROGRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v3, "onRequestFcmToken"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    iput-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "senderId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onStartWorkFlow()V
    .locals 4

    .line 147
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "onStartWorkFlow: entitlement is valid"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartWorkFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->requestEntitlement(I)V

    .line 156
    :cond_1
    :goto_0
    return-void
.end method

.method private onStopWorkflow(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "onStopWorkflow"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendEmptyMessage(I)Z

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    :cond_1
    return-void
.end method

.method private onWaitEapAkaResp()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "onWaitEapAkaResp"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 206
    return-void
.end method

.method private requestEntitlement(I)V
    .locals 4
    .param p1, "version"    # I

    .line 426
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHttpUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "httpUrl":Ljava/lang/String;
    if-ltz p1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/aec/util/PowerController;->lock(J)V

    .line 429
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setUserAgent(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHostName(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 433
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v3

    .line 432
    :goto_0
    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getIpAddress(ILjava/lang/String;Landroid/net/Network;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrls(Ljava/util/Queue;)V

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrls()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->doWorkflow()V

    .line 437
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    goto :goto_1

    .line 439
    :cond_2
    const/16 v1, 0x3ea

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendMessage(Landroid/os/Message;)Z

    .line 441
    :goto_1
    return-void
.end method


# virtual methods
.method public changeConnectivity()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method public clearAkaToken()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setAkaToken(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public clearResource()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 349
    return-void
.end method

.method abstract doWorkflow()V
.end method

.method public dump()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 77
    return-void
.end method

.method public getAkaToken()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAkaToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntitlementForVoLte()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v0

    return v0
.end method

.method public getEntitlementForVoWiFi()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v0

    return v0
.end method

.method public getEntitlementInitFromApp()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result v0

    return v0
.end method

.method getHttpGetResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHeaders(Ljava/util/Map;)V

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setParams(Ljava/util/Map;)V

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setNetwork(Landroid/net/Network;)V

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    .line 448
    .local v0, "response":Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 449
    return-object v0
.end method

.method getHttpPostResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHeaders(Ljava/util/Map;)V

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpPostData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setPostData(Lorg/json/JSONObject;)V

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setNetwork(Landroid/net/Network;)V

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->postURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    .line 457
    .local v0, "response":Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 458
    return-object v0
.end method

.method public getSMSoIpEntitlementStatus()Z
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSMSoIPEntitlementStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getVoLteEntitlementStatus()Z
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getVoWiFiEntitlementStatus()Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    goto :goto_0

    .line 137
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 139
    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    .line 132
    goto :goto_0

    .line 128
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->requestNetwork()V

    .line 126
    goto :goto_0

    .line 134
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onRequestFcmToken()V

    .line 135
    goto :goto_0

    .line 122
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onCompletedEapChallengeResp(Landroid/os/Message;)V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onWaitEapAkaResp()V

    .line 120
    goto :goto_0

    .line 116
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onCompletedWorkFlow()V

    .line 117
    goto :goto_0

    .line 113
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onStopWorkflow(Landroid/os/Message;)V

    .line 114
    goto :goto_0

    .line 110
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onStartWorkFlow()V

    .line 111
    nop

    .line 144
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$Workflow;
.end method

.method public initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mno"    # Ljava/lang/String;

    .line 81
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 82
    new-instance v0, Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/sec/internal/ims/aec/persist/AECStorage;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 83
    new-instance v0, Lcom/sec/internal/ims/aec/util/CalcEapAka;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {v0, v1, p2}, Lcom/sec/internal/ims/aec/util/CalcEapAka;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    .line 84
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 85
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpClient;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    .line 86
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 87
    new-instance v0, Lcom/sec/internal/ims/aec/util/PowerController;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    .line 88
    new-instance v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    .line 90
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->checkSimSwapped(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public isEntitlementOngoing()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return v0
.end method

.method public isReadyToNotifyApp()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    return v0
.end method

.method public isSharedAkaToken()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    return v0
.end method

.method public performEntitlement(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->isEntitlementOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "performEntitlement: entitlement in progress"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    return-void

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsPsDataRoaming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getPsDataRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "performEntitlement: not allowed in roaming"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    .line 271
    .local v0, "response":I
    const/16 v1, 0x190

    if-eq v0, v1, :cond_7

    const/16 v1, 0x193

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isConnected()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataConnected(Landroid/content/Context;Z)Z

    move-result v1

    const-wide/16 v2, 0x7d0

    if-nez v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v5, "performEntitlement: data unavailable"

    invoke-static {v1, v5, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getPsDataOff()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    :cond_3
    return-void

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/aec/util/HttpStore;->setAppId(Ljava/lang/String;)V

    .line 289
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->removeMessages(I)V

    .line 290
    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    const-string v5, "READY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 291
    const/16 v2, 0x3ee

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendEmptyMessage(I)Z

    .line 292
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 294
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    :goto_1
    return-void

    .line 274
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performEntitlement: stored response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    const/16 v1, 0x3ea

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendMessage(Landroid/os/Message;)Z

    .line 276
    return-void
.end method

.method public receivedFcmNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "app"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 364
    .local v0, "dateInConfig":Ljava/util/Date;
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 366
    .local v1, "dateInPushMsg":Ljava/util/Date;
    if-eqz v1, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 382
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v4, "discard outdated notification"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 369
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v2

    if-gez v2, :cond_3

    .line 371
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVersion(Ljava/lang/String;)V

    .line 373
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 377
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    goto :goto_2

    .line 379
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v4, "discard incorrect senderId"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 367
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v4, "discard incorrect syntax"

    invoke-static {v2, v4, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    :cond_7
    :goto_2
    return-void
.end method

.method public receivedSmsNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVersion(Ljava/lang/String;)V

    .line 391
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public refreshFcmToken()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string/jumbo v2, "refreshFcmToken"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method

.method public setPsDataRoaming(Z)V
    .locals 0
    .param p1, "roaming"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsPsDataRoaming:Z

    .line 306
    return-void
.end method

.method public setReadyToNotifyApp(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .line 310
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    .line 311
    return-void
.end method

.method public setSharedAkaToken(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    .line 331
    return-void
.end method

.method public setValidEntitlement(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 321
    return-void
.end method

.method public updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFcmToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "NOT_READY"

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setNotifToken(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    const-string v0, "READY"

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifToken()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "prevToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setNotifToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez v1, :cond_2

    .line 240
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 243
    .end local v0    # "prevToken":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
