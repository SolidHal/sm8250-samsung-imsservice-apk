.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;
.super Lcom/sec/internal/omanetapi/nms/AllPayloads;
.source "CloudMessageGetAllPayloads.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p3, "dbparam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/omanetapi/nms/AllPayloads;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceUrlPrefix(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->mBaseUrl:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildInternal(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "x2"    # Ljava/util/List;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->parseResponsePayload(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/util/List;)V

    return-void
.end method

.method public static buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;
    .locals 1
    .param p0, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dbparam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 39
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;-><init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method

.method private buildInternal(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 4
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "dbparam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 52
    move-object v0, p0

    .line 54
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    iget-object v1, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 55
    .local v1, "line":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "pat":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->initGetRequest()V

    .line 59
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 114
    return-void
.end method

.method private parseResponsePayload(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/util/List;)V
    .locals 9
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p2, "allPayloads":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/BodyPart;>;"
    new-instance v0, Ljavax/mail/util/ByteArrayDataSource;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object v1

    const-string v2, "multipart/related"

    invoke-direct {v0, v1, v2}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    .line 119
    .local v0, "ds":Ljavax/mail/util/ByteArrayDataSource;
    const/4 v1, 0x0

    .line 120
    .local v1, "multipart":Ljavax/mail/internet/MimeMultipart;
    const/4 v2, 0x0

    .line 121
    .local v2, "mimeBodyPart":Ljavax/mail/BodyPart;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    .line 124
    :cond_0
    const/4 v3, 0x0

    .line 130
    .local v3, "isContTypeHasBoundary":Z
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "content-type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 131
    .local v4, "contentType":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/util/List;

    .line 134
    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/util/List;

    .line 137
    :cond_4
    const-string v5, "boundary="

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 140
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 141
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 142
    const/4 v3, 0x1

    .line 143
    goto :goto_2

    .line 140
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 138
    .end local v6    # "i":I
    :cond_7
    :goto_1
    const/4 v3, 0x0

    .line 147
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 148
    :cond_9
    const/4 v3, 0x1

    .line 151
    :cond_a
    if-eqz v3, :cond_b

    .line 152
    :try_start_0
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    move-object v1, v5

    goto :goto_3

    .line 154
    :cond_b
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-type:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, "mimebodystart":I
    if-gez v5, :cond_c

    .line 156
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Type:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 158
    :cond_c
    if-gez v5, :cond_d

    .line 159
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content-type:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 161
    :cond_d
    sget-object v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimebodystart: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-ltz v5, :cond_12

    .line 163
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "mimebodypartString":Ljava/lang/String;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 165
    .local v7, "is":Ljava/io/InputStream;
    new-instance v8, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v8, v7}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v8

    .line 166
    .end local v6    # "mimebodypartString":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    nop

    .line 173
    .end local v5    # "mimebodystart":I
    :goto_3
    nop

    .line 174
    if-eqz v1, :cond_10

    .line 176
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    :try_start_1
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 177
    invoke-virtual {v1, v5}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 179
    .end local v5    # "i":I
    :cond_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    if-gtz v5, :cond_f

    .line 180
    return-void

    .line 186
    :cond_f
    goto :goto_5

    .line 182
    :catch_0
    move-exception v5

    .line 183
    .local v5, "e":Ljavax/mail/MessagingException;
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 184
    invoke-virtual {v5}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 185
    return-void

    .line 187
    .end local v5    # "e":Ljavax/mail/MessagingException;
    :cond_10
    if-eqz v2, :cond_11

    .line 189
    :try_start_2
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mimebodypart: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    nop

    .line 195
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 190
    :catch_1
    move-exception v5

    .line 191
    .restart local v5    # "e":Ljavax/mail/MessagingException;
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 192
    invoke-virtual {v5}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 193
    return-void

    .line 197
    .end local v5    # "e":Ljavax/mail/MessagingException;
    :cond_11
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 199
    :goto_5
    return-void

    .line 167
    .local v5, "mimebodystart":I
    :cond_12
    return-void

    .line 170
    .end local v5    # "mimebodystart":I
    :catch_2
    move-exception v5

    .line 171
    .local v5, "e":Ljavax/mail/MessagingException;
    invoke-virtual {v5}, Ljavax/mail/MessagingException;->printStackTrace()V

    .line 172
    return-void

    .line 122
    .end local v3    # "isContTypeHasBoundary":Z
    .end local v4    # "contentType":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "e":Ljavax/mail/MessagingException;
    :cond_13
    :goto_6
    return-void
.end method
