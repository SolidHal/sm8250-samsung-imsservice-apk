.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    .line 669
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 672
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mPhoneId:I

    const-string v2, "FetchOtp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method

.method protected setHttp()V
    .locals 3

    .line 678
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchOtp;->setHttp()V

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mMno:Lcom/sec/internal/constants/Mno;

    .line 680
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 684
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Set-Cookie"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 683
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 681
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$7;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 686
    :goto_1
    return-void
.end method
