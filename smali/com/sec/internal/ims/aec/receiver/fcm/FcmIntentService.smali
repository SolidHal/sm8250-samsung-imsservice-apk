.class public Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;
.super Landroid/app/IntentService;
.source "FcmIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflowFactory()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object v0

    .line 47
    .local v0, "workflowFactory":Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v1

    .line 49
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1, p2, p3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 23
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    monitor-enter v0

    .line 24
    :try_start_0
    const-string/jumbo v1, "phoneId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 25
    .local v1, "phoneId":I
    const-string/jumbo v2, "senderId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .local v2, "senderId":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    const-string v4, "fcm senderId not ready"

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v4

    .line 31
    .local v4, "instanceID":Lcom/google/firebase/iid/FirebaseInstanceId;
    const-string v5, "FCM"

    invoke-virtual {v4, v2, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "token":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    const-string v6, "fcm token not ready"

    invoke-direct {p0, v1, v3, v6}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    sget-object v6, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const-string v6, "fcm token ready"

    invoke-direct {p0, v1, v5, v6}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v4    # "instanceID":Lcom/google/firebase/iid/FirebaseInstanceId;
    .end local v5    # "token":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 39
    :catch_0
    move-exception v4

    .line 40
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v3, v5}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v1    # "phoneId":I
    .end local v2    # "senderId":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
