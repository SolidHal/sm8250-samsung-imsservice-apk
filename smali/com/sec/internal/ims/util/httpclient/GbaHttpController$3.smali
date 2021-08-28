.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$bsfServer:Ljava/lang/String;

.field final synthetic val$gbaType:[B

.field final synthetic val$imei:Ljava/lang/String;

.field final synthetic val$isGbaSupported:Z

.field final synthetic val$nafId:[B

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    .line 493
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-boolean p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$username:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$bsfServer:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$imei:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$gbaType:[B

    iput-object p9, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$nafId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 18
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 497
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sendBsfRequest(): onComplete: response build failure"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    invoke-static {v3, v2, v2, v4, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 499
    return-void

    .line 501
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    .line 504
    .local v3, "statusCode":I
    const v4, 0x31000001

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",<,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 505
    const/16 v4, 0x191

    if-eq v3, v4, :cond_1

    .line 506
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBsfRequest(): onComplete: unexpected response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    invoke-static {v4, v2, v2, v5, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 508
    return-void

    .line 511
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 512
    .local v4, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v5, "WWW-Authenticate"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 513
    .local v6, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 514
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .line 516
    :cond_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 522
    :cond_4
    new-instance v2, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    .line 523
    .local v2, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 524
    .local v5, "headerValue":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v17

    .line 526
    .local v17, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$url:Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$username:Ljava/lang/String;

    iget-object v11, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$bsfServer:Ljava/lang/String;

    iget-object v12, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$imei:Ljava/lang/String;

    iget-object v13, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$gbaType:[B

    iget-object v14, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$nafId:[B

    iget-boolean v15, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    iget-object v10, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-object/from16 v16, v10

    move-object/from16 v10, v17

    invoke-static/range {v7 .. v16}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$1000(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 527
    return-void

    .line 517
    .end local v2    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .end local v5    # "headerValue":Ljava/lang/String;
    .end local v17    # "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    :cond_5
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "sendBsfRequest(): onComplete: missing header: WWW-Authenticate"

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    invoke-static {v5, v2, v2, v7, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 519
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$1100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/io/IOException;)V

    .line 533
    return-void
.end method
