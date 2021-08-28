.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$akakeys:Lcom/sec/internal/ims/gba/params/GbaData;

.field final synthetic val$gbaType:[B

.field final synthetic val$isGbaSupported:Z

.field final synthetic val$nafId:[B

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$wwwAuthParsedHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ZLcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;[B[BLcom/sec/internal/ims/gba/params/GbaData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    .line 633
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-boolean p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$wwwAuthParsedHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$gbaType:[B

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$nafId:[B

    iput-object p7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$akakeys:Lcom/sec/internal/ims/gba/params/GbaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 18
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 637
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sendBsfRequestWithAuthorization(): onComplete: response build failure"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    invoke-static {v3, v2, v2, v4, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 639
    return-void

    .line 641
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    .line 644
    .local v3, "statusCode":I
    const v4, 0x31000001

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    .line 645
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 646
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBsfRequestWithAuthorization(): onComplete: response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    invoke-static {v4, v2, v2, v5, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 648
    return-void

    .line 651
    :cond_1
    const-class v4, Lcom/sec/internal/ims/gba/BsfResponse;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/sec/internal/helper/httpclient/HttpResponseUtils;->parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/gba/BsfResponse;

    .line 652
    .local v4, "response":Lcom/sec/internal/ims/gba/BsfResponse;
    if-nez v4, :cond_2

    .line 653
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sendBsfRequestWithAuthorization(): onComplete: parseXmlResponse failure"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    invoke-static {v5, v2, v2, v6, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 655
    return-void

    .line 657
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/gba/BsfResponse;->getBtid()Ljava/lang/String;

    move-result-object v2

    .line 658
    .local v2, "btid":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/internal/ims/gba/BsfResponse;->getLifetime()Ljava/lang/String;

    move-result-object v5

    .line 660
    .local v5, "lifetime":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v6, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    if-eqz v6, :cond_3

    .line 661
    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v7, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v8, v8, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$700(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v6

    .local v6, "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    goto :goto_0

    .line 663
    .end local v6    # "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    :cond_3
    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$700(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v6

    .line 666
    .restart local v6    # "lastAuthInfo":Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    :goto_0
    if-eqz v6, :cond_4

    .line 667
    iput-object v5, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    .line 669
    :cond_4
    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v7

    .line 670
    .local v7, "isSupportTls":Z
    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 671
    const/4 v7, 0x1

    move/from16 v17, v7

    goto :goto_1

    .line 673
    :cond_5
    move/from16 v17, v7

    .end local v7    # "isSupportTls":Z
    .local v17, "isSupportTls":Z
    :goto_1
    iget-object v7, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$wwwAuthParsedHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-virtual {v8}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v10

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCipherSuite()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$gbaType:[B

    iget-object v13, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$nafId:[B

    iget-object v14, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$akakeys:Lcom/sec/internal/ims/gba/params/GbaData;

    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v16

    move-object v8, v2

    move-object v9, v5

    move/from16 v15, v17

    invoke-interface/range {v7 .. v16}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->storeGbaDataAndGenerateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, "gbaKey":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBsfRequestWithAuthorization(): btid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", gbaKey: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v8, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-boolean v9, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    invoke-static {v8, v2, v7, v9, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$900(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 676
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$1100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/io/IOException;)V

    .line 682
    return-void
.end method
