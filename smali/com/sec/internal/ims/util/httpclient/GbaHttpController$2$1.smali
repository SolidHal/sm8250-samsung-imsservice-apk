.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

.field final synthetic val$result:Lcom/sec/internal/helper/httpclient/HttpResponseParams;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    .line 375
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->val$result:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "gbaKey"    # Ljava/lang/String;
    .param p3, "gbaUicc"    # Z
    .param p4, "gbaResult"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 378
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    const v0, 0x31000001

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v2, v2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",<,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->val$result:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$600(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    return-void

    .line 379
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sendRequestWithAuthorization:  cannot get username and password for GBA"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v0, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 381
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v1, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x31000009

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;->this$1:Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    iget-object v0, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 391
    return-void
.end method
