.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;
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
    name = "AuthorizeAppToken"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 1008
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1011
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v2, "AuthorizeAppToken: apptoken is received"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->access$700(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1013
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "AuthorizeAppToken: apptoken is empty"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1014
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$ReFetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0

    .line 1016
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "AuthorizeAppToken: apptoken is existed"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1017
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$AuthorizeAppToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0
.end method
