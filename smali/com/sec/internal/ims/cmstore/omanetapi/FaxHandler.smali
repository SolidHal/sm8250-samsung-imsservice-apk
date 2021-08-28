.class public Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;
.super Landroid/os/Handler;
.source "FaxHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;
    }
.end annotation


# static fields
.field public static final CREDENTIAL_EXPIRED:I = 0x100

.field private static final FAX_MSG:Ljava/lang/String; = "fax-message"

.field private static final MIME_VERSION:Ljava/lang/String; = "1.0"

.field private static REPORT_REQUESTED:Ljava/lang/String; = null

.field public static final RETRIEVE_FAX:I = 0x309

.field private static final SCHEME_URI_TEL:Ljava/lang/String; = "tel"

.field public static final SEND_ERROR_NO_RETRY:I = 0x2

.field public static final SEND_FAX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field public mFaxLine:Ljava/lang/String;

.field mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

.field public mFilePath:Ljava/lang/String;

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private final mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private mIsimDomain:Ljava/lang/String;

.field public mToLine:Ljava/lang/String;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "true"

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->REPORT_REQUESTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netAPIHandler"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;
    .param p4, "iRetryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 86
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFilePath:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxLine:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mToLine:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mIsimDomain:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 87
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 88
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-direct {v0, p2, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 89
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 90
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 91
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 92
    return-void
.end method

.method private buildAddressUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "msisdn"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, "sip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mIsimDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildNMSObjectJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "toMsisdn"    # Ljava/lang/String;
    .param p2, "fromMsisdn"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;

    .line 198
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 199
    .local v1, "sFormatOfName":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 201
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "date":Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;

    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;->Out:Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;

    .line 204
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler$Direction;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "tel"

    move-object/from16 v15, p2

    invoke-direct {v0, v4, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->buildAddressUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    .line 205
    move-object/from16 v14, p1

    invoke-direct {v0, v4, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->buildAddressUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v13, v5

    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->REPORT_REQUESTED:Ljava/lang/String;

    const-string v7, "fax-message"

    const-string v9, "1.0"

    const-string v11, "12345"

    const-string v16, "Multipart/fax-message"

    move-object v5, v3

    move-object v6, v2

    move-object/from16 v8, p3

    move-object/from16 v14, v16

    move-object v15, v4

    invoke-direct/range {v5 .. v15}, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v3, "attributeContent":Lcom/sec/internal/omanetapi/nms/data/AttributeContent;
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/AttributeList;-><init>()V

    .line 208
    .local v4, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 210
    .local v5, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    const-string v7, "/Media Folder/FAX Media"

    iput-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolderPath:Ljava/lang/String;

    .line 211
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    iput-object v4, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 213
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->date:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 214
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->messageContext:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 215
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->messageId:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageId([Ljava/lang/String;)V

    .line 216
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->miMeVersion:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMimeVersion([Ljava/lang/String;)V

    .line 217
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->direction:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 218
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->clientCorrelator:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setClientCorrelator([Ljava/lang/String;)V

    .line 219
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->from:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 220
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->to:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 221
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->contentType:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 222
    iget-object v6, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->reportRequested:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->createStringArr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setReportRequested([Ljava/lang/String;)V

    .line 224
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 226
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 227
    .local v6, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-class v7, Lcom/sec/internal/omanetapi/nms/data/Object;

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/FaxSerializer;

    invoke-direct {v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/FaxSerializer;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 229
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    .line 230
    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v7

    .line 232
    .local v7, "gson":Lcom/google/gson/Gson;
    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    const-class v9, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "json":Ljava/lang/String;
    return-object v8
.end method

.method private createStringArr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFileContentInBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 261
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 262
    const/16 v2, 0x100

    new-array v2, v2, [B

    .line 265
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 266
    .local v3, "read":I
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRcsFilePayloadFromPath, bytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    if-ltz v3, :cond_0

    .line 268
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 269
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_0

    .line 274
    .end local v2    # "buffer":[B
    .end local v3    # "read":I
    :cond_0
    nop

    .line 276
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    goto :goto_1

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 284
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    :goto_2
    goto :goto_4

    .line 285
    :catch_1
    move-exception v2

    .line 286
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 274
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 271
    :catch_2
    move-exception v2

    .line 272
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 276
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 279
    goto :goto_3

    .line 277
    :catch_3
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v1, :cond_1

    .line 284
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 290
    :cond_1
    :goto_4
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRcsFilePayloadFromPath, all bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    return-object v2

    .line 276
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 279
    goto :goto_6

    .line 277
    :catch_4
    move-exception v3

    .line 278
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6
    if-eqz v1, :cond_2

    .line 284
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 287
    goto :goto_7

    .line 285
    :catch_5
    move-exception v3

    .line 286
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_7
    throw v2
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 100
    if-nez p1, :cond_0

    .line 101
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 104
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 110
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->removeMessages(I)V

    .line 113
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    const/16 v1, 0x309

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 124
    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxLine:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 138
    .local v0, "paramCredExpired":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    .line 139
    goto :goto_0

    .line 126
    .end local v0    # "paramCredExpired":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_FAX_ERROR_WITH_NO_RETRY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 127
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 129
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 131
    .local v0, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 132
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 133
    .local v1, "errMsg":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 134
    goto :goto_0

    .line 117
    .end local v0    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .end local v1    # "errMsg":Landroid/os/Message;
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mToLine:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxLine:Ljava/lang/String;

    new-instance v2, Ljava/sql/Timestamp;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/HashManager;->generateHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->postFaxJsonRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 144
    :goto_0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 339
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "bufferDBInfo"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 332
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailedCall: errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 326
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->update(I)Z

    .line 328
    :goto_0
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 1
    .param p1, "event"    # I

    .line 356
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 361
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "param"    # Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I

    .line 350
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SELF_RETRY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 311
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;

    .line 306
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "event"    # I
    .param p3, "param"    # Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public pause()V
    .locals 0

    .line 375
    return-void
.end method

.method public postFaxJsonRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "toMsisdn"    # Ljava/lang/String;
    .param p2, "fromMsisdn"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;

    .line 167
    move-object v0, p0

    invoke-direct/range {p0 .. p3}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->buildNMSObjectJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "jsonBody":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postFaxJsonRequest(): toMsisdn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fromMsisdn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " jsonBody:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "multiParts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v4, "form-data"

    const-string v5, "application/json"

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v3, "jsonPostBody":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 177
    move-object/from16 v5, p4

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->getFileContentInBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "attachment;filename = \"fax.pdf\""

    const-string v8, "application/pdf"

    invoke-direct {v4, v7, v8, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 178
    .local v4, "httpPdfBody":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v6, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v7, "form-data;name=attachments"

    const-string v8, "multipart/mixed"

    invoke-direct {v6, v7, v8, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 184
    .local v6, "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .local v7, "objectInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    new-instance v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v9, 0x15

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    move-object v8, v14

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;)V

    .line 189
    .local v8, "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v9, v7, v8}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 191
    .local v9, "uploadParam":Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v11, p0, v9, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 192
    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 96
    return-void
.end method

.method public resume()V
    .locals 0

    .line 380
    return-void
.end method

.method public sendFaxUsingBufferDBTranslation(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 6
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 147
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendFaxUsingBufferDBTranslation param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 150
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFaxObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    .line 151
    .local v0, "objectInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v1, v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 153
    .local v1, "uploadParam":Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    :try_start_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 154
    .local v2, "imsuri":Lcom/sec/ims/util/ImsUri;
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mFaxLine:Ljava/lang/String;

    .line 155
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v2    # "imsuri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null pointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_0
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v3, p0, v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 162
    :cond_0
    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    .line 414
    return-void
.end method

.method public start()V
    .locals 0

    .line 370
    return-void
.end method

.method public stop()V
    .locals 0

    .line 385
    return-void
.end method

.method public update(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .line 390
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public updateDelay(IJ)Z
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 401
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDelay: eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 396
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/FaxHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
