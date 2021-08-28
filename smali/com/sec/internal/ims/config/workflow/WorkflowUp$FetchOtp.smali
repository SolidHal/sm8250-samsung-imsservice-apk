.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;
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
    name = "FetchOtp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;

    .line 426
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

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

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mMno:Lcom/sec/internal/constants/Mno;

    .line 431
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 435
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Set-Cookie"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 434
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 432
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTP"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 440
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    return-object v0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v4, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
