.class public Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;
.super Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.source "UploadResumeFileTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;-><init>(I)V

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doResumeFile(Ljava/net/URL;JJJ)Z
    .locals 25
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "first"    # J
    .param p4, "last"    # J
    .param p6, "total"    # J

    .line 195
    move-object/from16 v1, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResumeFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 202
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/HttpRequest;->contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;

    .line 205
    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1a

    move v8, v0

    .line 211
    .local v8, "code":I
    nop

    .line 212
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/16 v0, 0xc8

    const/4 v6, 0x1

    const-string v4, " happened. Retry Upload Task."

    if-eq v8, v0, :cond_5

    const/16 v0, 0x12e

    if-eq v8, v0, :cond_3

    const/16 v0, 0x191

    if-eq v8, v0, :cond_1

    const/16 v0, 0x194

    if-eq v8, v0, :cond_0

    const/16 v0, 0x19a

    if-eq v8, v0, :cond_0

    .line 256
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 257
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v7}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 258
    return v7

    .line 236
    :cond_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 237
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 238
    return v7

    .line 222
    :cond_1
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mPhoneId:I

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PUT"

    invoke-virtual {v1, v0, v2, v3, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "response":Ljava/lang/String;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v7}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    .line 227
    return v7

    .line 229
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    .line 230
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    .line 231
    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 232
    goto :goto_0

    .line 241
    .end local v0    # "response":Ljava/lang/String;
    :cond_3
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 242
    .local v21, "location":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 243
    new-instance v0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mPhoneId:I

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v15, v15, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object/from16 v19, v0

    move/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move/from16 v24, v15

    invoke-direct/range {v19 .. v24}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "openIdResponseURL":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 246
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 247
    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 248
    goto :goto_0

    .line 251
    .end local v0    # "openIdResponseURL":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "doResumeFile: OpenId process failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 253
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v7}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    return v7

    .line 260
    .end local v21    # "location":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v15, v4

    move v12, v7

    move/from16 v16, v8

    const/16 v3, 0x1e

    goto/16 :goto_13

    .line 218
    :cond_5
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_19

    .line 219
    nop

    .line 269
    :goto_0
    nop

    .line 271
    const-wide/32 v2, 0x7d000

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    move/from16 v19, v8

    .end local v8    # "code":I
    .local v19, "code":I
    iget-wide v7, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    const-wide/16 v20, 0x14

    div-long v7, v7, v20

    move-object v6, v4

    move-object v0, v5

    const-wide/32 v4, 0xf000

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v7, v2

    .line 273
    .local v7, "bufferSize":I
    const/4 v2, 0x0

    .line 276
    .local v2, "input":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_16

    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16

    move-object v8, v3

    .line 278
    .end local v2    # "input":Ljava/io/BufferedInputStream;
    .local v8, "input":Ljava/io/BufferedInputStream;
    :try_start_5
    invoke-virtual {v8, v9, v10}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13

    .line 280
    .local v2, "skipLength":J
    cmp-long v4, v2, v9

    if-gez v4, :cond_6

    .line 282
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 286
    goto :goto_1

    .line 291
    .end local v2    # "skipLength":J
    :catch_1
    move-exception v0

    move/from16 v18, v7

    move-object v2, v8

    move/from16 v16, v19

    const/4 v4, -0x1

    const/4 v12, 0x0

    goto/16 :goto_12

    .line 283
    .restart local v2    # "skipLength":J
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 285
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to skip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes actually skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v4, -0x1

    const/4 v15, 0x0

    :try_start_8
    invoke-virtual {v1, v0, v4, v4, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 289
    return v15

    .line 295
    .end local v2    # "skipLength":J
    :catch_3
    move-exception v0

    goto :goto_2

    .line 291
    :catch_4
    move-exception v0

    move/from16 v18, v7

    move-object v2, v8

    move v12, v15

    move/from16 v16, v19

    goto/16 :goto_12

    .line 295
    :catch_5
    move-exception v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v18, v7

    move-object v2, v8

    move v12, v15

    move/from16 v16, v19

    goto/16 :goto_10

    .line 291
    :catch_6
    move-exception v0

    const/4 v15, 0x0

    move/from16 v18, v7

    move-object v2, v8

    move v12, v15

    move/from16 v16, v19

    const/4 v4, -0x1

    goto/16 :goto_12

    .line 280
    .restart local v2    # "skipLength":J
    :cond_6
    const/4 v15, 0x0

    .line 307
    .end local v2    # "skipLength":J
    nop

    .line 310
    :try_start_9
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v2

    .line 312
    .local v20, "file":Ljava/io/File;
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;
    :try_end_9
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_7

    .line 313
    :try_start_a
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;
    :try_end_a
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v5, v2

    .local v2, "contentType":Ljava/lang/String;
    goto :goto_3

    .line 375
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v20    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v18, v7

    move-object v11, v8

    move/from16 v16, v19

    goto/16 :goto_e

    .line 371
    :catch_7
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move v12, v15

    move/from16 v16, v19

    goto/16 :goto_7

    .line 363
    :catch_8
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move v12, v15

    move/from16 v16, v19

    move-object v15, v6

    goto/16 :goto_a

    .line 315
    .restart local v20    # "file":Ljava/io/File;
    :cond_7
    :try_start_b
    invoke-static/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 318
    .local v5, "contentType":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 319
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v7}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    .line 320
    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    sub-long v3, v11, v9

    const-wide/16 v21, 0x1

    add-long v3, v3, v21

    .line 321
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2
    :try_end_b
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 322
    const/4 v3, 0x3

    move v11, v3

    move-object v15, v6

    const/16 v6, 0x1e

    move-wide/from16 v3, p2

    move-object v12, v5

    const/16 v17, 0x1

    .end local v5    # "contentType":Ljava/lang/String;
    .local v12, "contentType":Ljava/lang/String;
    move-wide/from16 v5, p4

    move/from16 v18, v7

    move-object v11, v8

    move-object/from16 v21, v12

    move/from16 v16, v19

    const/4 v12, 0x0

    .end local v7    # "bufferSize":I
    .end local v8    # "input":Ljava/io/BufferedInputStream;
    .end local v12    # "contentType":Ljava/lang/String;
    .end local v19    # "code":I
    .local v11, "input":Ljava/io/BufferedInputStream;
    .local v16, "code":I
    .local v18, "bufferSize":I
    .local v21, "contentType":Ljava/lang/String;
    move-wide/from16 v7, p6

    :try_start_c
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/HttpRequest;->contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;

    invoke-direct {v3, v1, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;J)V

    .line 323
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    .line 347
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v11}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->isCancelled()Z

    move-result v2
    :try_end_c
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v2, :cond_9

    .line 350
    nop

    .line 376
    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 379
    goto :goto_4

    .line 377
    :catch_9
    move-exception v0

    .line 380
    :goto_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_8

    .line 381
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 350
    :cond_8
    return v12

    .line 353
    :cond_9
    :try_start_e
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Upload file done. Read http response."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v2

    if-nez v2, :cond_b

    .line 356
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doResumeFile: Failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_e
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 358
    nop

    .line 376
    :try_start_f
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 379
    goto :goto_5

    .line 377
    :catch_a
    move-exception v0

    .line 380
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_a

    .line 381
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 358
    :cond_a
    return v12

    .line 360
    :cond_b
    :try_start_10
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "doResumeFile: Success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 362
    nop

    .line 376
    :try_start_11
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 379
    goto :goto_6

    .line 377
    :catch_b
    move-exception v0

    .line 380
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_c

    .line 381
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 362
    :cond_c
    return v17

    .line 371
    .end local v20    # "file":Ljava/io/File;
    .end local v21    # "contentType":Ljava/lang/String;
    :catch_c
    move-exception v0

    goto :goto_7

    .line 363
    :catch_d
    move-exception v0

    goto :goto_a

    .line 375
    .end local v11    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    .restart local v8    # "input":Ljava/io/BufferedInputStream;
    .restart local v19    # "code":I
    :catchall_1
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move/from16 v16, v19

    move-object v2, v0

    .end local v7    # "bufferSize":I
    .end local v8    # "input":Ljava/io/BufferedInputStream;
    .end local v19    # "code":I
    .restart local v11    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    goto/16 :goto_e

    .line 371
    .end local v11    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    .restart local v8    # "input":Ljava/io/BufferedInputStream;
    .restart local v19    # "code":I
    :catch_e
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move v12, v15

    move/from16 v16, v19

    .line 372
    .end local v7    # "bufferSize":I
    .end local v8    # "input":Ljava/io/BufferedInputStream;
    .end local v19    # "code":I
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v11    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    :goto_7
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 373
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 376
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :try_start_13
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    .line 379
    goto :goto_8

    .line 377
    :catch_f
    move-exception v0

    .line 380
    :goto_8
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_e

    .line 381
    :goto_9
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    goto :goto_d

    .line 363
    .end local v11    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    .restart local v8    # "input":Ljava/io/BufferedInputStream;
    .restart local v19    # "code":I
    :catch_10
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move v12, v15

    move/from16 v16, v19

    move-object v15, v6

    .line 364
    .end local v7    # "bufferSize":I
    .end local v8    # "input":Ljava/io/BufferedInputStream;
    .end local v19    # "code":I
    .local v0, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    .restart local v11    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    :goto_a
    :try_start_14
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 365
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 366
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1e

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_b

    .line 368
    :cond_d
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 376
    .end local v0    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :goto_b
    :try_start_15
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    .line 379
    goto :goto_c

    .line 377
    :catch_11
    move-exception v0

    .line 380
    :goto_c
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_e

    .line 381
    goto :goto_9

    .line 385
    :cond_e
    :goto_d
    return v12

    .line 375
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 376
    :goto_e
    :try_start_16
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    .line 379
    goto :goto_f

    .line 377
    :catch_12
    move-exception v0

    .line 380
    :goto_f
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_f

    .line 381
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 383
    :cond_f
    throw v2

    .line 295
    .end local v11    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    .restart local v8    # "input":Ljava/io/BufferedInputStream;
    .restart local v19    # "code":I
    :catch_13
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move/from16 v16, v19

    const/4 v12, 0x0

    move-object v2, v11

    .end local v7    # "bufferSize":I
    .end local v8    # "input":Ljava/io/BufferedInputStream;
    .end local v19    # "code":I
    .restart local v11    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    goto :goto_10

    .line 291
    .end local v11    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    .restart local v8    # "input":Ljava/io/BufferedInputStream;
    .restart local v19    # "code":I
    :catch_14
    move-exception v0

    move/from16 v18, v7

    move-object v11, v8

    move/from16 v16, v19

    const/4 v12, 0x0

    move-object v2, v11

    const/4 v4, -0x1

    .end local v7    # "bufferSize":I
    .end local v8    # "input":Ljava/io/BufferedInputStream;
    .end local v19    # "code":I
    .restart local v11    # "input":Ljava/io/BufferedInputStream;
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    goto :goto_12

    .end local v11    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .local v2, "input":Ljava/io/BufferedInputStream;
    .restart local v7    # "bufferSize":I
    .restart local v19    # "code":I
    :catch_15
    move-exception v0

    move/from16 v18, v7

    move/from16 v16, v19

    const/4 v12, 0x0

    const/4 v4, -0x1

    goto :goto_12

    .line 295
    :catch_16
    move-exception v0

    move/from16 v18, v7

    move/from16 v16, v19

    const/4 v12, 0x0

    .end local v7    # "bufferSize":I
    .end local v19    # "code":I
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    :goto_10
    move-object v3, v0

    .line 296
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_17

    .line 303
    goto :goto_11

    .line 300
    :catch_17
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 302
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_11
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 306
    return v12

    .line 291
    .end local v3    # "e":Ljava/io/IOException;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .restart local v7    # "bufferSize":I
    .restart local v19    # "code":I
    :catch_18
    move-exception v0

    move/from16 v18, v7

    move/from16 v16, v19

    const/4 v4, -0x1

    const/4 v12, 0x0

    .line 292
    .end local v7    # "bufferSize":I
    .end local v19    # "code":I
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "code":I
    .restart local v18    # "bufferSize":I
    :goto_12
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 293
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v3, v4, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 294
    return v12

    .line 260
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "input":Ljava/io/BufferedInputStream;
    .end local v16    # "code":I
    .end local v18    # "bufferSize":I
    .local v8, "code":I
    :catch_19
    move-exception v0

    move-object v15, v4

    move v12, v7

    move/from16 v16, v8

    const/16 v3, 0x1e

    .line 261
    .end local v8    # "code":I
    .local v0, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    .restart local v16    # "code":I
    :goto_13
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 262
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 263
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_14

    .line 265
    :cond_10
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 268
    :goto_14
    return v12

    .line 206
    .end local v0    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    .end local v16    # "code":I
    :catch_1a
    move-exception v0

    move v12, v7

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3, v12}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 210
    return v12
.end method

.method private getRequestUrl()Ljava/lang/String;
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    .local v0, "requestUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "serverUrl":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v1    # "serverUrl":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .restart local v1    # "serverUrl":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v1    # "serverUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "serverUrl":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v1    # "serverUrl":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 77
    .restart local v1    # "serverUrl":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private getUploadInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 19

    .line 81
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&get_upload_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "params":Ljava/lang/String;
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 84
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUploadInfo: params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 89
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 92
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "mHttpRequest is null"

    if-nez v8, :cond_1

    .line 93
    :try_start_1
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v8, v4, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    nop

    .line 185
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 95
    :cond_0
    return-object v3

    .line 99
    :cond_1
    :try_start_2
    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v8}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v8
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .local v8, "code":I
    const-string v10, " "

    const/16 v11, 0xc8

    if-eq v8, v11, :cond_d

    const/16 v12, 0x12e

    if-eq v8, v12, :cond_a

    const/16 v12, 0x191

    if-eq v8, v12, :cond_6

    const/16 v9, 0x1f7

    if-eq v8, v9, :cond_3

    .line 154
    :try_start_3
    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUploadInfo: Receive "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v12}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v10}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v9, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    nop

    .line 185
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 156
    :cond_2
    return-object v3

    .line 127
    :cond_3
    :try_start_4
    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Receive 503 Unavailable"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v10, "fthttp_upload_resume_from_the_start"

    invoke-interface {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 129
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v9, v4, v8, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v9, v5}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    :goto_0
    nop

    .line 185
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_5

    .line 186
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 133
    :cond_5
    return-object v3

    .line 107
    :cond_6
    :try_start_5
    iget v12, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mPhoneId:I

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v15, v15, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "GET"

    invoke-virtual {v1, v12, v13, v14, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, "response":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_7
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v13}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 113
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v14, v14, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 115
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v13, v12}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v13

    .line 116
    invoke-virtual {v13, v5}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 118
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-nez v13, :cond_9

    .line 119
    sget-object v10, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v9, v4, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_5
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    nop

    .line 185
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_8

    .line 186
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 121
    :cond_8
    return-object v3

    .line 123
    :cond_9
    :try_start_6
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    move v8, v9

    .line 124
    goto :goto_1

    .line 136
    .end local v12    # "response":Ljava/lang/String;
    :cond_a
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v12, "Location"

    invoke-virtual {v9, v12}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, "location":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 138
    new-instance v9, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v14, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mPhoneId:I

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v12, v12, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object/from16 v17, v13

    move-object v13, v9

    move-object/from16 v16, v12

    move/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v9}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "openIdResponseURL":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 141
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 142
    invoke-static {v4}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    iput-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 144
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9, v5}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 145
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    move v8, v9

    .line 146
    goto :goto_1

    .line 149
    .end local v4    # "openIdResponseURL":Ljava/lang/String;
    :cond_b
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v9, "getUploadInfo: openId process failed"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v4, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_6
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    nop

    .line 185
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_c

    .line 186
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 151
    :cond_c
    return-object v3

    .line 103
    .end local v15    # "location":Ljava/lang/String;
    :cond_d
    :try_start_7
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Receive 200 OK"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    nop

    .line 159
    :goto_1
    if-ne v11, v8, :cond_f

    .line 160
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v9, "getUploadInfo: Success"

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "body":Ljava/lang/String;
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 163
    sget-object v9, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getUploadInfo: Received. body="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseResume(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v3
    :try_end_7
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v5, :cond_e

    .line 186
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 164
    :cond_e
    return-object v3

    .line 167
    .end local v4    # "body":Ljava/lang/String;
    :cond_f
    :try_start_8
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getUploadInfo: Failed, Receive "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v11}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v10}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v4, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_8
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 185
    .end local v8    # "code":I
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_11

    .line 186
    goto :goto_2

    .line 185
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    .line 181
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 182
    .local v4, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v8, 0x3

    invoke-virtual {v1, v5, v8, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 185
    .end local v4    # "e":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_11

    .line 186
    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 179
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v6, v7, v7, v5}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 185
    .end local v4    # "e":Ljava/lang/Throwable;
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_11

    .line 186
    :goto_2
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    goto :goto_4

    .line 170
    :catch_2
    move-exception v0

    move-object v4, v0

    .line 171
    .local v4, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :try_start_b
    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 172
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 173
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v8, 0x1e

    invoke-virtual {v1, v6, v8, v7, v5}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_3

    .line 175
    :cond_10
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " happened. Retry Upload Task."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v8, 0x3

    invoke-virtual {v1, v6, v8, v7, v5}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 185
    .end local v4    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :goto_3
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_11

    .line 186
    goto :goto_2

    .line 191
    :cond_11
    :goto_4
    return-object v3

    .line 185
    :goto_5
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v4, :cond_12

    .line 186
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 188
    :cond_12
    throw v3
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)Ljava/lang/Long;
    .locals 13
    .param p1, "params"    # [Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 467
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mMnoStrategy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 469
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 471
    :cond_0
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    .line 477
    .local v8, "threadId":I
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 479
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTotal:J

    .line 484
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getUploadInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v9

    .line 485
    .local v9, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    if-nez v9, :cond_1

    .line 486
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to get upload info."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 489
    :cond_1
    const/4 v10, 0x0

    .line 491
    .local v10, "success":Z
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 492
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploaded over than requested size.  : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v10, 0x1

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v0

    add-long/2addr v0, v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 495
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already uploaded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v10, 0x1

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 499
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    sub-long/2addr v6, v2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v11, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    move-object v0, p0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doResumeFile(Ljava/net/URL;JJJ)Z

    move-result v10

    .line 503
    :cond_4
    :goto_0
    if-eqz v10, :cond_5

    .line 504
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getDownloadInfo()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCompleted(Ljava/lang/String;)V

    .line 511
    .end local v0    # "result":Ljava/lang/String;
    :cond_5
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, [Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doInBackground([Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected getDownloadInfo()Ljava/lang/String;
    .locals 14

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&get_download_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "params":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 392
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadInfo: params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 395
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 399
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .local v3, "code":I
    const-string v4, " "

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_6

    const/16 v6, 0x12e

    if-eq v3, v6, :cond_3

    const/16 v6, 0x191

    if-eq v3, v6, :cond_1

    .line 436
    :try_start_1
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    nop

    .line 456
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 437
    :cond_0
    return-object v1

    .line 406
    :cond_1
    :try_start_2
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    .local v6, "response":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 408
    goto/16 :goto_0

    .line 410
    :cond_2
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 413
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 414
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7, v6}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v7

    .line 415
    invoke-virtual {v7, v2}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 416
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v7

    move v3, v7

    .line 417
    goto :goto_0

    .line 419
    .end local v6    # "response":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v7, "Location"

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, "location":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 421
    new-instance v6, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mPhoneId:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v11, v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v12, v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v13, v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v6}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "openIdResponseURL":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 424
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 425
    invoke-static {v6}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 426
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->setDefaultHeaders()V

    .line 427
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7, v2}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 428
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v7

    move v3, v7

    .line 429
    goto :goto_0

    .line 432
    .end local v6    # "openIdResponseURL":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getDownloadInfo: OPenID Process failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    nop

    .line 456
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v2, :cond_5

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 433
    :cond_5
    return-object v1

    .line 402
    .end local v10    # "location":Ljava/lang/String;
    :cond_6
    :try_start_3
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Receive 200 OK"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    nop

    .line 440
    :goto_0
    if-ne v5, v3, :cond_8

    .line 441
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v5, "getDownloadInfo: Success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v2, :cond_7

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 442
    :cond_7
    return-object v1

    .line 444
    :cond_8
    :try_start_4
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDownloadInfo: Failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_4
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 456
    .end local v3    # "code":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v2, :cond_a

    .line 457
    goto :goto_2

    .line 456
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 447
    :catch_0
    move-exception v3

    .line 448
    .local v3, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :try_start_5
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 449
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_9

    .line 450
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v6, 0x1e

    invoke-virtual {p0, v4, v6, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_1

    .line 452
    :cond_9
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " happened. Retry Upload Task."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v6, 0x3

    invoke-virtual {p0, v4, v6, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    .end local v3    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v2, :cond_a

    .line 457
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 461
    :cond_a
    return-object v1

    .line 456
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v2, :cond_b

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 459
    :cond_b
    throw v1
.end method
