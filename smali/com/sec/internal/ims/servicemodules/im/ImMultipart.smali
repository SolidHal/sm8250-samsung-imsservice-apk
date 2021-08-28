.class public Lcom/sec/internal/ims/servicemodules/im/ImMultipart;
.super Ljava/lang/Object;
.source "ImMultipart.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImMultipart"

.field public static final SHARED_CLIENT_DATA_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.gsma.botsharedclientdata.v1.0+json"

.field public static final SUGGESTION_RESPONSE_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.gsma.botsuggestion.response.v1.0+json"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;

    .line 21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v3, "boundary="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 23
    .local v3, "index":I
    const-string v4, "ImMultipart"

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    add-int/lit8 v6, v3, 0x9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    move/from16 v16, v3

    goto/16 :goto_7

    .line 29
    :cond_0
    add-int/lit8 v6, v3, 0x9

    .line 30
    .local v6, "startIndex":I
    const/16 v7, 0x3b

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 31
    .local v7, "endIndex":I
    const-string v8, ""

    const-string v9, "\""

    if-ne v7, v5, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    nop

    .line 33
    .local v5, "boundary":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\r?\n?--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "(--)?\r?\n?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, "parts":[Ljava/lang/String;
    array-length v9, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_c

    aget-object v12, v8, v11

    .line 35
    .local v12, "part":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 36
    move/from16 v16, v3

    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v22, v8

    goto/16 :goto_6

    .line 38
    :cond_2
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-string/jumbo v15, "text/plain"

    if-nez v14, :cond_9

    const-string v14, "\r\n"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    move/from16 v16, v3

    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v22, v8

    goto/16 :goto_5

    .line 45
    :cond_3
    const/4 v13, 0x0

    .line 46
    .local v13, "type":Ljava/lang/String;
    const-string v14, "\r?\n\r?\n"

    const/4 v10, 0x2

    invoke-virtual {v12, v14, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 47
    .local v14, "headerBody":[Ljava/lang/String;
    move/from16 v16, v3

    .end local v3    # "index":I
    .local v16, "index":I
    array-length v3, v14

    if-ne v3, v10, :cond_7

    .line 48
    const/4 v3, 0x0

    aget-object v10, v14, v3

    const-string v3, "\r?\n"

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v10, v3

    move/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "startIndex":I
    .local v18, "startIndex":I
    :goto_2
    const/16 v19, 0x1

    if-ge v6, v10, :cond_5

    move/from16 v20, v7

    .end local v7    # "endIndex":I
    .local v20, "endIndex":I
    aget-object v7, v3, v6

    .line 49
    .local v7, "header":Ljava/lang/String;
    move-object/from16 v21, v3

    const-string v3, ": |:"

    move-object/from16 v22, v8

    const/4 v8, 0x2

    .end local v8    # "parts":[Ljava/lang/String;
    .local v22, "parts":[Ljava/lang/String;
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "nameValue":[Ljava/lang/String;
    move-object/from16 v17, v7

    .end local v7    # "header":Ljava/lang/String;
    .local v17, "header":Ljava/lang/String;
    array-length v7, v3

    if-ne v7, v8, :cond_4

    const/4 v7, 0x0

    aget-object v8, v3, v7

    const-string v7, "content-type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 51
    aget-object v6, v3, v19

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 52
    .end local v13    # "type":Ljava/lang/String;
    .local v6, "type":Ljava/lang/String;
    move-object v13, v6

    goto :goto_3

    .line 48
    .end local v3    # "nameValue":[Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v17    # "header":Ljava/lang/String;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v20

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    goto :goto_2

    .end local v20    # "endIndex":I
    .end local v22    # "parts":[Ljava/lang/String;
    .local v7, "endIndex":I
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_5
    move/from16 v20, v7

    move-object/from16 v22, v8

    .line 55
    .end local v7    # "endIndex":I
    .end local v8    # "parts":[Ljava/lang/String;
    .restart local v20    # "endIndex":I
    .restart local v22    # "parts":[Ljava/lang/String;
    :goto_3
    if-eqz v13, :cond_8

    .line 56
    const-string v3, "application/vnd.gsma.botsuggestion.v1.0+json"

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    aget-object v3, v14, v19

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mSuggestion:Ljava/lang/String;

    goto :goto_4

    .line 59
    :cond_6
    aget-object v3, v14, v19

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 60
    iput-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    goto :goto_4

    .line 47
    .end local v18    # "startIndex":I
    .end local v20    # "endIndex":I
    .end local v22    # "parts":[Ljava/lang/String;
    .local v6, "startIndex":I
    .restart local v7    # "endIndex":I
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_7
    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v22, v8

    .line 64
    .end local v6    # "startIndex":I
    .end local v7    # "endIndex":I
    .end local v8    # "parts":[Ljava/lang/String;
    .restart local v18    # "startIndex":I
    .restart local v20    # "endIndex":I
    .restart local v22    # "parts":[Ljava/lang/String;
    :cond_8
    :goto_4
    if-nez v13, :cond_b

    .line 65
    iput-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 66
    iput-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    goto :goto_6

    .line 38
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "headerBody":[Ljava/lang/String;
    .end local v16    # "index":I
    .end local v18    # "startIndex":I
    .end local v20    # "endIndex":I
    .end local v22    # "parts":[Ljava/lang/String;
    .local v3, "index":I
    .restart local v6    # "startIndex":I
    .restart local v7    # "endIndex":I
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_9
    move/from16 v16, v3

    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v22, v8

    .line 39
    .end local v3    # "index":I
    .end local v6    # "startIndex":I
    .end local v7    # "endIndex":I
    .end local v8    # "parts":[Ljava/lang/String;
    .restart local v16    # "index":I
    .restart local v18    # "startIndex":I
    .restart local v20    # "endIndex":I
    .restart local v22    # "parts":[Ljava/lang/String;
    :goto_5
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 40
    .local v3, "idx":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    if-le v6, v7, :cond_a

    .line 41
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 42
    iput-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    .line 44
    .end local v3    # "idx":I
    :cond_a
    nop

    .line 34
    .end local v12    # "part":Ljava/lang/String;
    :cond_b
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v6, v18

    move/from16 v7, v20

    move-object/from16 v8, v22

    goto/16 :goto_1

    .line 70
    .end local v16    # "index":I
    .end local v18    # "startIndex":I
    .end local v20    # "endIndex":I
    .end local v22    # "parts":[Ljava/lang/String;
    .local v3, "index":I
    .restart local v6    # "startIndex":I
    .restart local v7    # "endIndex":I
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_c
    move/from16 v16, v3

    move/from16 v18, v6

    .end local v3    # "index":I
    .end local v6    # "startIndex":I
    .restart local v16    # "index":I
    .restart local v18    # "startIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boundary = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ContentType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 23
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v7    # "endIndex":I
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v16    # "index":I
    .end local v18    # "startIndex":I
    .restart local v3    # "index":I
    :cond_d
    move/from16 v16, v3

    .line 24
    .end local v3    # "index":I
    .restart local v16    # "index":I
    :goto_7
    const-string v3, "no boundary"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    .line 26
    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .locals 3
    .param p0, "contentType"    # Ljava/lang/String;

    .line 74
    if-eqz p0, :cond_0

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "multipart/mixed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMultipart;->mSuggestion:Ljava/lang/String;

    return-object v0
.end method
