.class Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;
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
    name = "FetchHttp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;

    .line 333
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)V

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

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 337
    .local v0, "subId":I
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttp:run() mPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setUserImsi(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-boolean v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMobileNetwork:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsCMCC()V

    .line 342
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v1

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpCMCC()V

    .line 345
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v3

    iput v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpResult:I

    .line 347
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpResult:I

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpResult:I

    const/16 v3, 0x1ff

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v5, v6, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    return-object v1

    .line 348
    :cond_2
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    return-object v1
.end method
