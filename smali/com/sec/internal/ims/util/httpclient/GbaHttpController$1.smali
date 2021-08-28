.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    .line 117
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 20
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 120
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    .line 121
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "execute(): onComplete: response build failure"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "okhttp response build failure"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$100(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v10

    .line 128
    .local v10, "statusCode":I
    const v0, 0x31000001

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",<,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 130
    const/16 v0, 0x191

    if-ne v10, v0, :cond_8

    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$200(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$300(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Special case: TIM operator requires CSFB for 401."

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v0, 0x193

    invoke-virtual {v9, v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 134
    iget-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 135
    return-void

    .line 138
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v0, v9, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$400(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 142
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v0, "url":Ljava/net/URL;
    nop

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v11

    .line 149
    .local v11, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v2, "WWW-Authenticate"

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 150
    .local v3, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v12, v3

    goto :goto_1

    .line 151
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    move-object v12, v3

    .line 153
    .end local v3    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_3

    .line 158
    :cond_4
    new-instance v2, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    move-object v13, v2

    .line 159
    .local v13, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    .line 160
    .local v14, "headerValue":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v15

    .line 161
    .local v15, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v15}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "realm":Ljava/lang/String;
    const-string v3, "3GPP-bootstrapping"

    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    iget-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v3

    if-lez v3, :cond_5

    .line 165
    iget-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/helper/httpclient/DnsController;

    .line 166
    .local v3, "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 167
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 169
    .end local v3    # "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    :cond_5
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$502(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 170
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$500(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    new-instance v4, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1$1;

    invoke-direct {v4, v1, v0, v9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1$1;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    invoke-interface {v2, v3, v8, v9, v4}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)V

    goto :goto_2

    .line 188
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HTTP digest without GBA"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUserName()Ljava/lang/String;

    move-result-object v16

    .line 190
    .local v16, "username":Ljava/lang/String;
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPassword()Ljava/lang/String;

    move-result-object v17

    .line 191
    .local v17, "password":Ljava/lang/String;
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v4, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/16 v18, 0x0

    move-object v3, v0

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v19, v8

    .end local v8    # "realm":Ljava/lang/String;
    .local v19, "realm":Ljava/lang/String;
    move/from16 v8, v18

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$600(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    .end local v0    # "url":Ljava/net/URL;
    .end local v11    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .end local v14    # "headerValue":Ljava/lang/String;
    .end local v15    # "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .end local v16    # "username":Ljava/lang/String;
    .end local v17    # "password":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 154
    .restart local v0    # "url":Ljava/net/URL;
    .restart local v11    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v12    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "execute(): onComplete: missing header: WWW-Authenticate"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 156
    return-void

    .line 143
    .end local v0    # "url":Ljava/net/URL;
    .end local v11    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "wwwAuthHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 145
    return-void

    .line 194
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_8
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO GBA process"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 197
    :goto_4
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    .line 203
    return-void
.end method
