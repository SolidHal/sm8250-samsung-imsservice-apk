.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;
.super Ljava/lang/Object;
.source "WorkflowCmcc.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 283
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpRedirect:Z

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 288
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 295
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpRedirect:Z

    goto :goto_1

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 303
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 305
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStartForce:Z

    const/4 v2, 0x0

    if-ne v1, v3, :cond_4

    .line 306
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v1

    goto :goto_2

    .line 308
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v3, 0x5

    if-eq v1, v3, :cond_5

    goto :goto_2

    .line 317
    :cond_5
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v1

    goto :goto_2

    .line 312
    :cond_6
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v1

    .line 313
    nop

    .line 322
    :goto_2
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;

    if-eqz v1, :cond_7

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMobileNetwork:Z

    if-nez v1, :cond_7

    .line 324
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "now use wifi. try non-ps step directly."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v1

    .line 329
    :cond_7
    return-object v0
.end method
