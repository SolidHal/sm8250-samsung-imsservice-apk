.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$fqdn:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/net/URL;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    .line 296
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$fqdn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 19
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    .line 300
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onComplete: the response of 2nd time naf request build failure"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 303
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v9

    .line 306
    .local v9, "statusCode":I
    const v1, 0x31000001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",<,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 308
    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v9, v1, :cond_b

    const/16 v1, 0xc9

    if-eq v9, v1, :cond_b

    const/16 v1, 0xca

    if-ne v9, v1, :cond_1

    move/from16 v17, v9

    goto/16 :goto_4

    .line 337
    :cond_1
    const/16 v1, 0x191

    if-ne v9, v1, :cond_a

    .line 338
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$700(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v10

    .line 339
    .local v10, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    if-eqz v10, :cond_2

    .line 340
    const/4 v1, 0x0

    iput-object v1, v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 341
    iput-object v8, v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 342
    new-instance v1, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    iput-object v1, v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 345
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v11

    .line 346
    .local v11, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "WWW-Authenticate"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 347
    .local v3, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v12, v3

    goto :goto_1

    .line 348
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    move-object v12, v3

    .line 351
    .end local v3    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    move/from16 v17, v9

    goto/16 :goto_3

    .line 357
    :cond_5
    new-instance v1, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    move-object v13, v1

    .line 358
    .local v13, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 359
    .local v14, "headerValue":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v15

    .line 360
    .local v15, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v15}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "realm":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->isStale()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stale is true. Reuse same username.."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v4, p1

    move/from16 v17, v9

    move-object v9, v7

    .end local v7    # "realm":Ljava/lang/String;
    .local v9, "realm":Ljava/lang/String;
    .local v17, "statusCode":I
    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$600(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 365
    .end local v17    # "statusCode":I
    .restart local v7    # "realm":Ljava/lang/String;
    .local v9, "statusCode":I
    :cond_6
    move/from16 v17, v9

    move-object v9, v7

    .end local v7    # "realm":Ljava/lang/String;
    .local v9, "realm":Ljava/lang/String;
    .restart local v17    # "statusCode":I
    const-string v1, "3GPP-bootstrapping"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 366
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Retry GBA authentication..."

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_7

    .line 368
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    .line 369
    .local v1, "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 370
    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 372
    .end local v1    # "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    :cond_7
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onComplete: 401 Unauthorized. reset GbaKey"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v9, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 374
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    new-instance v3, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;

    invoke-direct {v3, v0, v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2$1;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    invoke-interface {v1, v2, v9, v8, v3}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)V

    .line 393
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBA process end"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 395
    :cond_8
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP digest without GBA"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUserName()Ljava/lang/String;

    move-result-object v16

    .line 397
    .local v16, "username":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPassword()Ljava/lang/String;

    move-result-object v18

    .line 398
    .local v18, "password":Ljava/lang/String;
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$600(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 401
    .end local v16    # "username":Ljava/lang/String;
    .end local v18    # "password":Ljava/lang/String;
    :goto_2
    return-void

    .line 351
    .end local v13    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .end local v14    # "headerValue":Ljava/lang/String;
    .end local v15    # "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .end local v17    # "statusCode":I
    .local v9, "statusCode":I
    :cond_9
    move/from16 v17, v9

    .line 352
    .end local v9    # "statusCode":I
    .restart local v17    # "statusCode":I
    :goto_3
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sendRequestWithAuthorization(): onComplete: missing header: WWW-Authenticate"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 354
    return-void

    .line 403
    .end local v10    # "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .end local v11    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "statusCode":I
    .restart local v9    # "statusCode":I
    :cond_a
    move/from16 v17, v9

    .end local v9    # "statusCode":I
    .restart local v17    # "statusCode":I
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onComplete: The response status code of 2nd time naf request is not 200"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 308
    .end local v17    # "statusCode":I
    .restart local v9    # "statusCode":I
    :cond_b
    move/from16 v17, v9

    .line 309
    .end local v9    # "statusCode":I
    .restart local v17    # "statusCode":I
    :goto_4
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$700(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v1

    .line 310
    .local v1, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    if-eqz v1, :cond_e

    .line 311
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 312
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 315
    .local v3, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v4, "Authentication-Info"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 316
    .local v4, "authInfoHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_c

    .line 317
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 318
    .local v5, "headerValue":Ljava/lang/String;
    new-instance v6, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;

    invoke-direct {v6}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;-><init>()V

    .line 319
    .local v6, "authInfoHeaderParser":Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;
    invoke-virtual {v6, v5}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/AuthenticationInfoHeader;

    move-result-object v7

    .line 321
    .local v7, "authInfoParsedHeader":Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->getNextNonce()Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, "nextNonce":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 324
    iput-object v9, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 328
    .end local v5    # "headerValue":Ljava/lang/String;
    .end local v6    # "authInfoHeaderParser":Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;
    .end local v7    # "authInfoParsedHeader":Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .end local v9    # "nextNonce":Ljava/lang/String;
    :cond_c
    const-string v5, "ETag"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 329
    .local v5, "etagInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_d

    .line 330
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "etagValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 332
    iput-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    .line 335
    .end local v2    # "etagValue":Ljava/lang/String;
    :cond_d
    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$800(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v1    # "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .end local v3    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "authInfoHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "etagInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    nop

    .line 406
    :goto_5
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 407
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 411
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Second time naf request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$fqdn:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$700(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    .line 416
    .local v0, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    if-eqz v0, :cond_1

    .line 417
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 418
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 419
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 420
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 421
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 422
    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 425
    return-void
.end method
