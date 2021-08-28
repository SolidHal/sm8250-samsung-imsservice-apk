.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;
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
    name = "FetchToken"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 986
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

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

    .line 989
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0

    .line 992
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v3, "FetchToken: rcstoken is existed"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 993
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v0
.end method
