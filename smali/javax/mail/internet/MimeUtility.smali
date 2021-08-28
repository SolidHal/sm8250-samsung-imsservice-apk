.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field private static decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static encodeEolStrict:Z

.field private static foldEncodedWords:Z

.field private static foldText:Z

.field private static java2mime:Ljava/util/Hashtable;

.field private static mime2java:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 136
    const/4 v1, 0x0

    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 137
    sput-boolean v1, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 138
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 142
    :try_start_0
    const-string v2, "mail.mime.decodetext.strict"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .local v2, "s":Ljava/lang/String;
    const-string v3, "false"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 145
    const-string v4, "mail.mime.encodeeol.strict"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v4

    .line 147
    const-string/jumbo v4, "true"

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    sput-boolean v5, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 148
    const-string v5, "mail.mime.foldencodedwords"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 150
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    sput-boolean v4, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 151
    const-string v4, "mail.mime.foldtext"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 153
    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 154
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1209
    :goto_3
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    .line 1210
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    .line 1216
    :try_start_3
    const-class v0, Ljavax/mail/internet/MimeUtility;

    .line 1217
    const-string v1, "/META-INF/javamail.charset.map"

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1215
    nop

    .line 1219
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    .line 1221
    :try_start_4
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 1224
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/util/LineInputStream;

    sget-object v2, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V

    .line 1227
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/util/LineInputStream;

    sget-object v2, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1230
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 1231
    :catch_1
    move-exception v1

    goto :goto_5

    .line 1228
    :catchall_0
    move-exception v1

    .line 1230
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 1231
    :catch_2
    move-exception v2

    .line 1234
    :goto_4
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1236
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 1241
    :cond_4
    :goto_5
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    const-string v1, "euc-kr"

    const-string v2, "ISO-8859-1"

    if-eqz v0, :cond_5

    .line 1242
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_2"

    const-string v4, "ISO-8859-2"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_2"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-2"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_3"

    const-string v4, "ISO-8859-3"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_3"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-3"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_4"

    const-string v4, "ISO-8859-4"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_4"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-4"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_5"

    const-string v4, "ISO-8859-5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_6"

    const-string v4, "ISO-8859-6"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_6"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-6"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_7"

    const-string v4, "ISO-8859-7"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_7"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-7"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_8"

    const-string v4, "ISO-8859-8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_9"

    const-string v4, "ISO-8859-9"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_9"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-9"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string/jumbo v3, "sjis"

    const-string v4, "Shift_JIS"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "jis"

    const-string v4, "ISO-2022-JP"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso2022jp"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_jp"

    const-string v4, "euc-jp"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "koi8_r"

    const-string v4, "koi8-r"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_cn"

    const-string v4, "euc-cn"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_tw"

    const-string v4, "euc-tw"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_kr"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_5
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1288
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "iso-2022-cn"

    const-string v4, "ISO2022CN"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "iso-2022-kr"

    const-string v4, "ISO2022KR"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v3, "utf-8"

    const-string v4, "UTF8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v3, "utf8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "ja_jp.iso2022-7"

    const-string v4, "ISO2022JP"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "ja_jp.eucjp"

    const-string v4, "EUCJIS"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "KSC5601"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v1, "euckr"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v1, "us-ascii"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v1, "x-us-ascii"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 17
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "breakOnNonAscii"    # Z

    .line 1416
    move/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "ascii":I
    const/4 v2, 0x0

    .line 1418
    .local v2, "non_ascii":I
    const/16 v3, 0x1000

    .line 1419
    .local v3, "block":I
    const/4 v4, 0x0

    .line 1420
    .local v4, "linelen":I
    const/4 v5, 0x0

    .local v5, "longLine":Z
    const/4 v6, 0x0

    .line 1421
    .local v6, "badEOL":Z
    sget-boolean v7, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v8

    .line 1422
    .local v7, "checkEOL":Z
    :goto_0
    const/4 v10, 0x0

    check-cast v10, [B

    .line 1423
    .local v10, "buf":[B
    const/4 v11, -0x1

    if-eqz v0, :cond_2

    .line 1424
    const/16 v12, 0x1000

    if-ne v0, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_1
    move v3, v12

    .line 1425
    new-array v10, v3, [B

    .line 1427
    move-object v12, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 1423
    :cond_2
    move-object v12, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1427
    .end local p1    # "max":I
    .local v1, "max":I
    .local v2, "ascii":I
    .local v3, "non_ascii":I
    .local v4, "block":I
    .local v5, "linelen":I
    .local v6, "longLine":Z
    .local v10, "badEOL":Z
    .local v12, "buf":[B
    :goto_2
    if-nez v1, :cond_3

    move-object/from16 v14, p0

    goto :goto_7

    .line 1429
    :cond_3
    move-object/from16 v14, p0

    :try_start_0
    invoke-virtual {v14, v12, v8, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v15, v0

    .local v15, "len":I
    if-ne v0, v11, :cond_4

    .line 1430
    goto :goto_7

    .line 1431
    :cond_4
    const/4 v0, 0x0

    .line 1432
    .local v0, "lastb":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_3
    if-lt v8, v15, :cond_6

    .line 1461
    .end local v0    # "lastb":I
    .end local v8    # "i":I
    if-eq v1, v11, :cond_5

    .line 1462
    sub-int/2addr v1, v15

    const/4 v8, 0x0

    goto :goto_2

    .line 1461
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1437
    .restart local v0    # "lastb":I
    .restart local v8    # "i":I
    :cond_6
    aget-byte v11, v12, v8

    and-int/lit16 v11, v11, 0xff

    .line 1438
    .local v11, "b":I
    const/16 v9, 0xa

    const/16 v13, 0xd

    if-eqz v7, :cond_9

    .line 1439
    if-ne v0, v13, :cond_7

    if-ne v11, v9, :cond_8

    .line 1440
    :cond_7
    if-eq v0, v13, :cond_9

    if-ne v11, v9, :cond_9

    .line 1441
    :cond_8
    const/4 v10, 0x1

    .line 1442
    :cond_9
    if-eq v11, v13, :cond_b

    if-ne v11, v9, :cond_a

    goto :goto_4

    .line 1445
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 1446
    const/16 v9, 0x3e6

    if-le v5, v9, :cond_c

    .line 1447
    const/4 v6, 0x1

    goto :goto_5

    .line 1443
    :cond_b
    :goto_4
    const/4 v5, 0x0

    .line 1449
    :cond_c
    :goto_5
    invoke-static {v11}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_e

    .line 1450
    if-eqz p2, :cond_d

    .line 1451
    const/4 v9, 0x3

    return v9

    .line 1453
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1455
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 1456
    :goto_6
    move v0, v11

    .line 1432
    .end local v11    # "b":I
    add-int/lit8 v8, v8, 0x1

    const/4 v11, -0x1

    goto :goto_3

    .line 1458
    .end local v0    # "lastb":I
    .end local v8    # "i":I
    .end local v15    # "len":I
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "ioex":Ljava/io/IOException;
    nop

    .line 1465
    .end local v0    # "ioex":Ljava/io/IOException;
    :goto_7
    if-nez v1, :cond_f

    if-eqz p2, :cond_f

    .line 1472
    const/4 v8, 0x3

    return v8

    .line 1465
    :cond_f
    const/4 v8, 0x3

    .line 1474
    const/4 v0, 0x2

    if-nez v3, :cond_12

    .line 1479
    if-eqz v10, :cond_10

    .line 1480
    return v8

    .line 1482
    :cond_10
    if-eqz v6, :cond_11

    .line 1483
    return v0

    .line 1485
    :cond_11
    const/4 v8, 0x1

    return v8

    .line 1487
    :cond_12
    if-le v2, v3, :cond_13

    .line 1488
    return v0

    .line 1489
    :cond_13
    const/4 v8, 0x3

    return v8
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 1345
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v1, 0x0

    .line 1346
    .local v1, "non_ascii":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1348
    .local v2, "l":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_2

    .line 1355
    .end local v3    # "i":I
    if-nez v1, :cond_0

    .line 1356
    const/4 v3, 0x1

    return v3

    .line 1357
    :cond_0
    if-le v0, v1, :cond_1

    .line 1358
    const/4 v3, 0x2

    return v3

    .line 1360
    :cond_1
    const/4 v3, 0x3

    return v3

    .line 1349
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1352
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1348
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static checkAscii([B)I
    .locals 4
    .param p0, "b"    # [B

    .line 1374
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v1, 0x0

    .line 1376
    .local v1, "non_ascii":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1386
    .end local v2    # "i":I
    if-nez v1, :cond_0

    .line 1387
    const/4 v2, 0x1

    return v2

    .line 1388
    :cond_0
    if-le v0, v1, :cond_1

    .line 1389
    const/4 v2, 0x2

    return v2

    .line 1391
    :cond_1
    const/4 v2, 0x3

    return v2

    .line 1380
    .restart local v2    # "i":I
    :cond_2
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1383
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1376
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 306
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 308
    :cond_0
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Lcom/sun/mail/util/QPDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 310
    :cond_1
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 311
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 312
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 314
    :cond_2
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 315
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 319
    :cond_3
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_4
    :goto_0
    return-object p0

    .line 313
    :cond_5
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 863
    .local v1, "buf":Ljava/lang/StringBuffer;
    nop

    :goto_0
    const-string v2, "=?"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-gez v2, :cond_0

    goto :goto_1

    .line 864
    :cond_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    add-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3f

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 867
    .local v2, "end":I
    if-gez v2, :cond_1

    .line 868
    goto :goto_1

    .line 870
    :cond_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 871
    if-gez v2, :cond_2

    .line 872
    goto :goto_1

    .line 874
    :cond_2
    add-int/lit8 v4, v2, 0x1

    const-string v5, "?="

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 875
    if-gez v2, :cond_5

    .line 876
    nop

    .line 886
    .end local v2    # "end":I
    :goto_1
    if-nez v0, :cond_3

    .line 887
    return-object p0

    .line 888
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 889
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 877
    .restart local v2    # "end":I
    :cond_5
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_2

    .line 880
    :catch_0
    move-exception v5

    .line 883
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    add-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 501
    const-string v0, " \t\n\r"

    .line 513
    .local v0, "lwsp":Ljava/lang/String;
    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 514
    return-object p0

    .line 518
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 519
    .local v2, "st":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 521
    .local v4, "wsb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 523
    .local v5, "prevWasEncoded":Z
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1

    .line 580
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 581
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 525
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, "s":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v8, v10, :cond_a

    const/16 v8, 0x9

    if-eq v9, v8, :cond_a

    .line 528
    const/16 v8, 0xd

    if-eq v9, v8, :cond_a

    const/16 v8, 0xa

    if-ne v9, v8, :cond_2

    goto :goto_2

    .line 534
    :cond_2
    :try_start_0
    invoke-static {v6}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "word":Ljava/lang/String;
    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 540
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 543
    .end local v8    # "word":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 545
    .local v8, "pex":Ljavax/mail/internet/ParseException;
    move-object v10, v6

    .line 547
    .local v10, "word":Ljava/lang/String;
    sget-boolean v11, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v11, :cond_8

    .line 548
    invoke-static {v10}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 549
    .local v11, "dword":Ljava/lang/String;
    if-eq v11, v10, :cond_6

    .line 552
    if-eqz v5, :cond_4

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 557
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 558
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 561
    :cond_5
    const-string v12, "?="

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 562
    move-object v10, v11

    move-object v8, v10

    goto :goto_1

    .line 565
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_7

    .line 566
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 567
    :cond_7
    const/4 v5, 0x0

    move-object v8, v10

    goto :goto_1

    .line 571
    .end local v11    # "dword":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 572
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 573
    :cond_9
    const/4 v5, 0x0

    move-object v8, v10

    .line 576
    .end local v10    # "word":Ljava/lang/String;
    .local v8, "word":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 529
    .end local v8    # "word":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "eword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 760
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 765
    const/4 v0, 0x2

    .line 766
    .local v0, "start":I
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    .local v3, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 769
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "charset":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x1

    .line 773
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-eq v1, v4, :cond_7

    .line 776
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "encoding":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x1

    .line 780
    const-string v5, "?="

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    if-eq v5, v4, :cond_6

    .line 790
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-lez v5, :cond_3

    .line 797
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 796
    nop

    .line 801
    .local v5, "bis":Ljava/io/ByteArrayInputStream;
    const-string v7, "B"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 802
    new-instance v7, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v7, v5}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .local v7, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 803
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_0
    const-string v7, "Q"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 804
    new-instance v7, Lcom/sun/mail/util/QDecoderStream;

    invoke-direct {v7, v5}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 814
    .restart local v7    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 815
    .local v8, "count":I
    new-array v9, v8, [B

    .line 817
    .local v9, "bytes":[B
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    move v8, v11

    .line 821
    if-gtz v8, :cond_1

    goto :goto_1

    .line 822
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9, v10, v8, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 821
    :goto_1
    nop

    .local v6, "decodedWord":Ljava/lang/String;
    goto :goto_2

    .line 806
    .end local v6    # "decodedWord":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "count":I
    .end local v9    # "bytes":[B
    :cond_2
    new-instance v6, Ljava/io/UnsupportedEncodingException;

    .line 807
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unknown encoding: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 806
    invoke-direct {v6, v7}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "start":I
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "word":Ljava/lang/String;
    .end local p0    # "eword":Ljava/lang/String;
    throw v6

    .line 825
    .end local v5    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "start":I
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v3    # "pos":I
    .restart local v4    # "word":Ljava/lang/String;
    .restart local p0    # "eword":Ljava/lang/String;
    :cond_3
    move-object v5, v6

    move-object v6, v5

    .line 827
    .restart local v6    # "decodedWord":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 829
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 830
    .local v5, "rest":Ljava/lang/String;
    sget-boolean v7, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v7, :cond_4

    .line 831
    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 832
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    .line 834
    .end local v5    # "rest":Ljava/lang/String;
    :cond_5
    return-object v6

    .line 842
    .end local v6    # "decodedWord":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 850
    .local v5, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v6, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 839
    .end local v5    # "iex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 841
    .local v5, "ioex":Ljava/io/IOException;
    new-instance v6, Ljavax/mail/internet/ParseException;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 835
    .end local v5    # "ioex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 838
    .local v5, "uex":Ljava/io/UnsupportedEncodingException;
    throw v5

    .line 781
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_6
    new-instance v4, Ljavax/mail/internet/ParseException;

    .line 782
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encoded word does not end with \"?=\": "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 781
    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 774
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljavax/mail/internet/ParseException;

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "encoded word does not include encoding: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-direct {v1, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    .end local v2    # "charset":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljavax/mail/internet/ParseException;

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "encoded word does not include charset: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 761
    .end local v0    # "start":I
    .end local v3    # "pos":I
    :cond_9
    new-instance v0, Ljavax/mail/internet/ParseException;

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoded word does not start with \"=?\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "b64"    # Z
    .param p2, "jcharset"    # Ljava/lang/String;
    .param p3, "avail"    # I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "first"    # Z
    .param p6, "encodingWord"    # Z
    .param p7, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 699
    move-object/from16 v1, p0

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 701
    .local v13, "bytes":[B
    if-eqz p1, :cond_0

    .line 702
    invoke-static {v13}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I

    move-result v0

    move v14, v0

    .local v0, "len":I
    goto :goto_0

    .line 704
    .end local v0    # "len":I
    :cond_0
    invoke-static {v13, v10}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I

    move-result v0

    move v14, v0

    .line 707
    .local v14, "len":I
    :goto_0
    move/from16 v15, p3

    if-le v14, v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    move v9, v0

    .local v9, "size":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 710
    const/4 v0, 0x0

    div-int/lit8 v2, v9, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 711
    nop

    .line 710
    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move v0, v9

    .end local v9    # "size":I
    .local v0, "size":I
    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 712
    div-int/lit8 v9, v0, 0x2

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 713
    const/4 v7, 0x0

    .line 712
    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    move-object/from16 v4, p4

    goto :goto_5

    .line 707
    .end local v0    # "size":I
    .restart local v9    # "size":I
    :cond_1
    move v0, v9

    .line 716
    .end local v9    # "size":I
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 718
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_3

    .line 719
    new-instance v0, Lcom/sun/mail/util/BEncoderStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .local v0, "eos":Ljava/io/OutputStream;
    goto :goto_1

    .line 721
    .end local v0    # "eos":Ljava/io/OutputStream;
    :cond_3
    new-instance v0, Lcom/sun/mail/util/QEncoderStream;

    invoke-direct {v0, v2, v10}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object v3, v0

    .line 724
    .local v3, "eos":Ljava/io/OutputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v3, v13}, Ljava/io/OutputStream;->write([B)V

    .line 725
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 726
    :catch_0
    move-exception v0

    .line 728
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 731
    .local v0, "encodedBytes":[B
    if-nez p5, :cond_5

    .line 732
    sget-boolean v4, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v4, :cond_4

    .line 733
    const-string v4, "\r\n "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 735
    :cond_4
    const-string v4, " "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    :cond_5
    :goto_3
    move-object/from16 v4, p4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v6, v0

    if-lt v5, v6, :cond_6

    .line 740
    .end local v5    # "i":I
    const-string v5, "?="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    .end local v0    # "encodedBytes":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "eos":Ljava/io/OutputStream;
    :goto_5
    return-void

    .line 739
    .restart local v0    # "encodedBytes":[B
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "eos":Ljava/io/OutputStream;
    .restart local v5    # "i":I
    :cond_6
    aget-byte v6, v0, v5

    int-to-char v6, v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 738
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 335
    if-nez p1, :cond_0

    .line 336
    return-object p0

    .line 337
    :cond_0
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 339
    :cond_1
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 341
    :cond_2
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 342
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 343
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 345
    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 346
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 347
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 350
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_5
    :goto_0
    return-object p0

    .line 344
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 372
    if-nez p1, :cond_0

    .line 373
    return-object p0

    .line 374
    :cond_0
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 376
    :cond_1
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 378
    :cond_2
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 379
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 380
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 382
    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 383
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 384
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 387
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_5
    :goto_0
    return-object p0

    .line 381
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 459
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 635
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodingWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 651
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    .line 652
    .local v0, "ascii":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    return-object p0

    .line 657
    :cond_0
    if-nez p1, :cond_1

    .line 658
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "jcharset":Ljava/lang/String;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    move-object v9, v1

    goto :goto_0

    .line 661
    .end local v1    # "jcharset":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 664
    .local v9, "jcharset":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_3

    .line 665
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 666
    const-string p2, "Q"

    goto :goto_1

    .line 668
    :cond_2
    const-string p2, "B"

    .line 672
    :cond_3
    :goto_1
    const-string v1, "B"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    const/4 v1, 0x1

    move v10, v1

    .local v1, "b64":Z
    goto :goto_2

    .line 674
    .end local v1    # "b64":Z
    :cond_4
    const-string v1, "Q"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 675
    const/4 v1, 0x0

    move v10, v1

    .line 680
    .local v10, "b64":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 681
    .local v8, "outb":Ljava/lang/StringBuffer;
    nop

    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v4, v1, 0x44

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 687
    const/4 v6, 0x1

    .line 681
    move-object v1, p0

    move v2, v10

    move-object v3, v9

    move v7, p3

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 689
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 677
    .end local v8    # "outb":Ljava/lang/StringBuffer;
    .end local v10    # "b64":Z
    :cond_5
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown transfer encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-direct {v1, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "used"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 968
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_0

    .line 969
    return-object p1

    .line 974
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "end":I
    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    if-gez v0, :cond_1

    goto :goto_1

    .line 975
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 976
    .local v3, "c":C
    if-eq v3, v2, :cond_a

    if-eq v3, v1, :cond_a

    const/16 v4, 0xd

    if-eq v3, v4, :cond_a

    const/16 v4, 0xa

    if-eq v3, v4, :cond_a

    .line 977
    nop

    .line 979
    .end local v3    # "c":C
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    .line 980
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 983
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    const/16 v5, 0x4c

    if-gt v3, v5, :cond_3

    .line 984
    return-object p1

    .line 987
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v3

    .line 988
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 989
    .local v3, "lastc":C
    move v8, p0

    move-object v7, p1

    .end local p0    # "used":I
    .end local p1    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    .local v8, "used":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v8

    if-gt p0, v5, :cond_4

    goto :goto_5

    .line 990
    :cond_4
    const/4 p0, -0x1

    .line 991
    .local p0, "lastspace":I
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, -0x1

    if-lt p1, v9, :cond_5

    goto :goto_4

    .line 992
    :cond_5
    if-eq p0, v10, :cond_7

    add-int v9, v8, p1

    if-le v9, v5, :cond_7

    .line 993
    nop

    .line 1000
    .end local p1    # "i":I
    :goto_4
    if-ne p0, v10, :cond_6

    .line 1002
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    const-string v7, ""

    .line 1004
    const/4 v8, 0x0

    .line 1005
    nop

    .line 1014
    .end local p0    # "lastspace":I
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1007
    .restart local p0    # "lastspace":I
    :cond_6
    invoke-virtual {v7, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    const-string p1, "\r\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1009
    invoke-virtual {v7, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1010
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1011
    add-int/lit8 p1, p0, 0x1

    invoke-virtual {v7, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1012
    const/4 v8, 0x1

    goto :goto_2

    .line 994
    .restart local p1    # "i":I
    :cond_7
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 995
    .local v9, "c":C
    if-eq v9, v2, :cond_8

    if-ne v9, v1, :cond_9

    .line 996
    :cond_8
    if-eq v3, v2, :cond_9

    if-eq v3, v1, :cond_9

    .line 997
    move p0, p1

    .line 998
    :cond_9
    move v3, v9

    .line 991
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 974
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "used":I
    .end local v9    # "c":C
    .local v3, "c":C
    .local p0, "used":I
    .local p1, "s":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 5

    .line 1154
    const-string v0, "8859_1"

    sget-object v1, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1159
    const/4 v1, 0x0

    .line 1161
    .local v1, "mimecs":Ljava/lang/String;
    :try_start_0
    const-string v2, "mail.mime.charset"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v2

    .line 1163
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1164
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1165
    return-object v0

    .line 1169
    :cond_0
    :try_start_1
    const-string v2, "file.encoding"

    .line 1170
    nop

    .line 1169
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1171
    :catch_1
    move-exception v2

    .line 1179
    .local v2, "sex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v4}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1178
    nop

    .line 1180
    .local v3, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1181
    if-nez v4, :cond_1

    .line 1182
    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1186
    .end local v1    # "mimecs":Ljava/lang/String;
    .end local v2    # "sex":Ljava/lang/SecurityException;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    return-object v0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .line 1193
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1195
    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1199
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    .line 1200
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 5
    .param p0, "dh"    # Ljavax/activation/DataHandler;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v1, 0x0

    .line 248
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 252
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 257
    const-string/jumbo v2, "text/*"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 259
    new-instance v2, Ljavax/mail/internet/AsciiOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 261
    .local v2, "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v4

    .line 265
    :goto_0
    invoke-virtual {v2}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v4

    if-eq v4, v3, :cond_2

    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    .line 273
    const-string v1, "base64"

    .line 274
    goto :goto_2

    .line 270
    :cond_1
    const-string/jumbo v1, "quoted-printable"

    .line 271
    goto :goto_2

    .line 267
    :cond_2
    const-string v1, "7bit"

    .line 268
    goto :goto_2

    .line 280
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :cond_3
    new-instance v2, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v4, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    invoke-direct {v2, v3, v4}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 279
    nop

    .line 282
    .restart local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 283
    :catch_1
    move-exception v4

    .line 284
    :goto_1
    invoke-virtual {v2}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 285
    const-string v1, "7bit"

    goto :goto_2

    .line 287
    :cond_4
    const-string v1, "base64"

    .line 290
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :goto_2
    return-object v1

    .line 253
    :catch_2
    move-exception v2

    .line 254
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "base64"

    return-object v3
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 6
    .param p0, "ds"    # Ljavax/activation/DataSource;

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v1, 0x0

    .line 186
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 189
    .local v2, "encoding":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 190
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    .line 195
    const-string/jumbo v3, "text/*"

    invoke-virtual {v0, v3}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v3

    .line 197
    .local v3, "isText":Z
    const/4 v4, -0x1

    xor-int/lit8 v5, v3, 0x1

    invoke-static {v1, v4, v5}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v4

    .line 198
    .local v4, "i":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 206
    const-string v2, "base64"

    goto :goto_0

    .line 203
    :cond_0
    const-string/jumbo v2, "quoted-printable"

    .line 204
    goto :goto_0

    .line 200
    :cond_1
    const-string v2, "7bit"

    .line 201
    nop

    .line 212
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v5

    .line 215
    :goto_1
    return-object v2

    .line 191
    .end local v3    # "isText":Z
    .end local v4    # "i":I
    :catch_1
    move-exception v3

    .line 192
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "base64"

    return-object v4
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 1084
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1089
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1090
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1094
    .end local v2    # "i":I
    return v0

    .line 1091
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_1

    .line 1092
    return v2

    .line 1090
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    .end local v1    # "len":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 1108
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1113
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1112
    nop

    .line 1114
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 1110
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method

.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    .locals 5
    .param p0, "is"    # Lcom/sun/mail/util/LineInputStream;
    .param p1, "table"    # Ljava/util/Hashtable;

    .line 1306
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1311
    .local v0, "currLine":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1312
    goto :goto_1

    .line 1313
    :cond_1
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1315
    goto :goto_1

    .line 1318
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1319
    goto :goto_0

    .line 1323
    :cond_3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    .local v1, "tk":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1326
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1327
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1328
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1304
    .end local v0    # "currLine":Ljava/lang/String;
    .end local v1    # "tk":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 1307
    :catch_1
    move-exception v0

    .line 1308
    .local v0, "ioex":Ljava/io/IOException;
    nop

    .line 1330
    .end local v0    # "ioex":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 1131
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1136
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1135
    nop

    .line 1137
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 1133
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method

.method static final nonascii(I)Z
    .locals 1
    .param p0, "b"    # I

    .line 1493
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "specials"    # Ljava/lang/String;

    .line 910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 916
    .local v0, "len":I
    const/4 v1, 0x0

    .line 917
    .local v1, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x22

    if-lt v2, v0, :cond_1

    .line 943
    .end local v2    # "i":I
    if-eqz v1, :cond_0

    .line 944
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x2

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 945
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 946
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 948
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 918
    .local v2, "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 919
    .local v4, "c":C
    const/16 v5, 0xa

    const/16 v6, 0xd

    const/16 v7, 0x5c

    if-eq v4, v3, :cond_5

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_5

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 938
    :cond_2
    const/16 v3, 0x20

    if-lt v4, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 940
    :cond_3
    const/4 v1, 0x1

    .line 917
    .end local v4    # "c":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 921
    .restart local v4    # "c":C
    :cond_5
    :goto_1
    new-instance v8, Ljava/lang/StringBuffer;

    add-int/lit8 v9, v0, 0x3

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 922
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 924
    const/4 v9, 0x0

    .line 925
    .local v9, "lastc":I
    move v10, v2

    .local v10, "j":I
    :goto_2
    if-lt v10, v0, :cond_6

    .line 936
    .end local v10    # "j":I
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 937
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 926
    .restart local v10    # "j":I
    :cond_6
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 927
    .local v11, "cc":C
    if-eq v11, v3, :cond_7

    if-eq v11, v7, :cond_7

    .line 928
    if-eq v11, v6, :cond_7

    if-ne v11, v5, :cond_9

    .line 929
    :cond_7
    if-ne v11, v5, :cond_8

    if-ne v9, v6, :cond_8

    goto :goto_3

    .line 932
    :cond_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 933
    :cond_9
    :goto_3
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 934
    move v9, v11

    .line 925
    .end local v11    # "cc":C
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 1027
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_0

    .line 1028
    return-object p0

    .line 1030
    :cond_0
    const/4 v0, 0x0

    .line 1032
    .local v0, "sb":Ljava/lang/StringBuffer;
    nop

    :goto_0
    const-string v1, "\r\n"

    invoke-static {p0, v1}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "i":I
    if-gez v1, :cond_2

    .line 1070
    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1074
    :cond_1
    return-object p0

    .line 1033
    :cond_2
    move v1, v2

    .line 1034
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1035
    .local v3, "l":I
    add-int/lit8 v2, v2, 0x1

    .line 1036
    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 1037
    add-int/lit8 v2, v2, 0x1

    .line 1038
    :cond_3
    const/4 v4, 0x0

    if-eqz v1, :cond_6

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    goto :goto_1

    .line 1063
    :cond_4
    if-nez v0, :cond_5

    .line 1064
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    .line 1065
    :cond_5
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1042
    :cond_6
    :goto_1
    if-ge v2, v3, :cond_c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const/16 v7, 0x9

    const/16 v8, 0x20

    if-eq v5, v8, :cond_7

    if-ne v6, v7, :cond_c

    .line 1043
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 1044
    nop

    :goto_2
    if-ge v2, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    if-eq v5, v8, :cond_8

    if-eq v6, v7, :cond_8

    goto :goto_3

    .line 1045
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1046
    :cond_9
    :goto_3
    if-nez v0, :cond_a

    .line 1047
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    .line 1048
    :cond_a
    if-eqz v1, :cond_b

    .line 1049
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1052
    :cond_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1053
    goto/16 :goto_0

    .line 1056
    .end local v6    # "c":C
    :cond_c
    if-nez v0, :cond_d

    .line 1057
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    .line 1058
    :cond_d
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
