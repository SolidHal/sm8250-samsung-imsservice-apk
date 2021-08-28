.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 293
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

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

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setSharedInfoWithParamForUp()V

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 298
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v2, "200 OK is received, try to parse"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    .line 302
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMobileNetwork:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsheaderEnrichment:Z

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 307
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v2, "403 is received, set version to zero"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "msisdn"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->access$500(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 313
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->LOG_TAG:Ljava/lang/String;

    const-string v2, "msisdn is wrong from user, try it again after 300 sec"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->setValidityTimer(I)V

    .line 315
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
