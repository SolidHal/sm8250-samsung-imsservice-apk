.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;
.super Ljava/lang/Object;
.source "ReqZCode.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "strBody":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    const/16 v1, 0x26

    const-string v2, "errorCode="

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->findErrorCode(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "errorCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;Ljava/lang/String;)V

    .line 61
    .end local v1    # "errorCode":Ljava/lang/String;
    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_3

    .line 62
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;)V

    goto :goto_1

    .line 63
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 64
    .local v1, "retryAfter":I
    if-lez v1, :cond_4

    .line 65
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 68
    .end local v1    # "retryAfter":I
    :cond_4
    nop

    .line 72
    :goto_1
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;)V

    .line 78
    return-void
.end method
