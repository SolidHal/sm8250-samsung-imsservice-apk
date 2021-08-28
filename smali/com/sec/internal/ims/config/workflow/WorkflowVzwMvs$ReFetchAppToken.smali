.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;
.super Ljava/lang/Object;
.source "WorkflowVzwMvs.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReFetchAppToken"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 1021
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1025
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "ReFetchAppToken: immediately perform retry"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    .line 1027
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 1029
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReFetchAppToken: mNoAppTokenRetryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mNoAppTokenRetryTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    aget-wide v5, v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->registerGeneralErrorRetryIntentReceiver()V

    .line 1032
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    aget-wide v3, v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startGeneralErrorRetryTimer(J)V

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mNoAppTokenRetryCount:I

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1035
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0

    .line 1037
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "ReFetchAppToken: no need to retry anymore for no apptoken"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iput-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1039
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mIsGeneralErrorRetryFailed:Z

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->cancelValidityTimer()V

    .line 1041
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0
.end method
