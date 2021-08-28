.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;
.source "BufferDBSupportTranslation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MessageStatus;,
        Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mDelimiter:Ljava/lang/String;

.field private final mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

.field protected final sFormatOfName:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 77
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, ";"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mDelimiter:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 79
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    .line 82
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    return-void
.end method

.method private getAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 650
    .local v0, "address":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryRCSParticipantDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 651
    .local v1, "participantCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 652
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 655
    :cond_0
    const-string/jumbo v2, "uri"

    .line 656
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 655
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "telUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    goto :goto_0

    .line 660
    :cond_1
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "valueAddr":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v2    # "telUri":Ljava/lang/String;
    .end local v3    # "valueAddr":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_2

    .line 650
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    .line 666
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 667
    .end local v1    # "participantCursor":Landroid/database/Cursor;
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddrFromParticipantTable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-object v0
.end method

.method private getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    .locals 10
    .param p1, "rowId"    # J

    .line 861
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddrFromPduId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 864
    .local v0, "from":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 865
    .local v1, "to":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 866
    .local v2, "bcc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 867
    .local v3, "cc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryAddrBufferDB(J)Landroid/database/Cursor;

    move-result-object v4

    .line 868
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_8

    .line 869
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 871
    :cond_0
    const-string v5, "address"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 872
    .local v5, "address":Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 873
    .local v6, "direction":I
    sget-object v7, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " direction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "address is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v7, 0x0

    .line 875
    .local v7, "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v8, 0x89

    if-ne v6, v8, :cond_1

    .line 876
    move-object v7, v0

    goto :goto_0

    .line 877
    :cond_1
    const/16 v8, 0x97

    if-ne v6, v8, :cond_2

    .line 878
    move-object v7, v1

    goto :goto_0

    .line 879
    :cond_2
    const/16 v8, 0x81

    if-ne v6, v8, :cond_3

    .line 880
    move-object v7, v2

    goto :goto_0

    .line 881
    :cond_3
    const/16 v8, 0x82

    if-ne v6, v8, :cond_6

    .line 882
    move-object v7, v3

    .line 887
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 888
    goto :goto_1

    .line 889
    :cond_4
    const-string v8, "insert-address-token"

    .line 890
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 891
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserCtn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 893
    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "direction":I
    .end local v7    # "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_3

    .line 867
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_7

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v5

    .line 898
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 899
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_9
    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v4
.end method

.method private getDataFromPartFile(J)[B
    .locals 9
    .param p1, "partID"    # J

    .line 904
    const-string v0, "getDataFromPartFile is.close() error: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/part/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 905
    .local v1, "partURI":Landroid/net/Uri;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 906
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 908
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 909
    if-eqz v3, :cond_0

    .line 910
    const/16 v4, 0x100

    new-array v4, v4, [B

    .line 911
    .local v4, "buffer":[B
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 912
    .local v5, "len":I
    :goto_0
    if-ltz v5, :cond_0

    .line 913
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 914
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    goto :goto_0

    .line 920
    .end local v4    # "buffer":[B
    .end local v5    # "len":I
    :cond_0
    if-eqz v3, :cond_1

    .line 922
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 925
    :goto_1
    goto :goto_2

    .line 923
    :catch_0
    move-exception v4

    .line 924
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 928
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 920
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 922
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 925
    goto :goto_3

    .line 923
    :catch_1
    move-exception v5

    .line 924
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v4

    .line 917
    :catch_2
    move-exception v4

    .line 918
    .restart local v4    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 920
    if-eqz v3, :cond_3

    .line 922
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 925
    goto :goto_4

    .line 923
    :catch_3
    move-exception v6

    .line 924
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-object v5
.end method

.method private getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "encoding"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    .line 932
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 934
    .local v1, "is":Ljava/io/FileInputStream;
    const/16 v2, 0x100

    :try_start_2
    new-array v2, v2, [B

    .line 936
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 937
    .local v3, "read":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 938
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 939
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 942
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileContentInBytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " getRcsFilePayloadFromPath, all bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 942
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v5, p2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 945
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 949
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 945
    return-object v4

    .line 947
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 949
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 947
    return-object v4

    .line 932
    .end local v2    # "buffer":[B
    .end local v3    # "read":I
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
    .end local p1    # "filePath":Ljava/lang/String;
    .end local p2    # "encoding":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;
    :goto_1
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
    .restart local p1    # "filePath":Ljava/lang/String;
    .restart local p2    # "encoding":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;
    :catchall_2
    move-exception v1

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
    .end local p1    # "filePath":Ljava/lang/String;
    .end local p2    # "encoding":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;
    :goto_2
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 949
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
    .restart local p1    # "filePath":Ljava/lang/String;
    .restart local p2    # "encoding":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsFilePayloadFromPath :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 953
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFilePayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "thumbfile"    # Ljava/io/File;
    .param p4, "filepath"    # Ljava/lang/String;

    .line 376
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 377
    .local v1, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    nop

    .line 379
    const-string v2, "file_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 378
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment;filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "contentDisposition":Ljava/lang/String;
    nop

    .line 383
    const-string v4, "content_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 382
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "contentType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 387
    :cond_0
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    invoke-direct {v11, v12, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v13

    .line 388
    .local v13, "data":[B
    if-eqz v13, :cond_3

    array-length v5, v13

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 389
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    const-string v14, "cid:thumbnail"

    .line 391
    .local v14, "fileIcon":Ljava/lang/String;
    new-instance v15, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const/4 v10, 0x0

    move-object v5, v15

    move-object v6, v3

    move-object v7, v4

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    move-object v1, v15

    .line 392
    .end local v14    # "fileIcon":Ljava/lang/String;
    goto :goto_0

    .line 393
    :cond_1
    new-instance v5, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v5, v3, v4, v13}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v1, v5

    goto :goto_0

    .line 377
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "contentDisposition":Ljava/lang/String;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v13    # "data":[B
    :cond_2
    move-object/from16 v11, p0

    move-object/from16 v12, p4

    .line 397
    :cond_3
    :goto_0
    return-object v1
.end method

.method private getFtMultiBody(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 401
    nop

    .line 402
    const-string/jumbo v0, "thumbnail_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 401
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "thumbfilepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 404
    .local v1, "file":Ljava/io/File;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 407
    :cond_0
    const/4 v2, 0x0

    .line 408
    .local v2, "thumbfile":Ljava/io/File;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 411
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v3, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 414
    const/4 v4, 0x0

    .line 415
    .local v4, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFilePayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v4

    .line 416
    if-eqz v4, :cond_2

    .line 417
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_2
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getThumbnailPayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v4

    .line 420
    if-eqz v4, :cond_3

    .line 421
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Filepath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " File payload size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " thumbnailpath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " Thumbnail payload size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 423
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v4    # "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_2

    .line 426
    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 427
    nop

    .line 428
    const-string v4, "file_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 427
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment;filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "contentDisposition":Ljava/lang/String;
    nop

    .line 432
    const-string v6, "content_type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 431
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "contentType":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, p2, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v7

    .line 434
    .local v7, "data":[B
    if-eqz v7, :cond_6

    array-length v8, v7

    if-eqz v8, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    .line 437
    :cond_5
    new-instance v8, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v8, v5, v6, v7}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 438
    .local v8, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    .end local v8    # "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :cond_6
    :goto_0
    return-object v3

    .line 440
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "contentDisposition":Ljava/lang/String;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "data":[B
    :cond_7
    :goto_1
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "thumbnail filepath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,body size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_2
    return-object v3
.end method

.method private getThumbnailPayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "thumbfile"    # Ljava/io/File;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "thumbfilepath"    # Ljava/lang/String;

    .line 342
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 343
    .local v1, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    nop

    .line 345
    const-string v2, "file_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 344
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "filename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const-string v3, "jpg"

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment;filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "contentDisposition":Ljava/lang/String;
    nop

    .line 352
    const-string v5, "content_type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 351
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "contentType":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 355
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 357
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 360
    :cond_2
    :goto_0
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    invoke-direct {v12, v13, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v14

    .line 361
    .local v14, "data":[B
    if-eqz v14, :cond_5

    array-length v6, v14

    if-eqz v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 362
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 363
    const-string/jumbo v15, "thumbnail"

    .line 364
    .local v15, "contentId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icon;filename=\"thumbnail_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    new-instance v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const/4 v10, 0x0

    move-object v6, v4

    move-object v7, v3

    move-object v8, v5

    move-object v9, v14

    move-object v11, v15

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 367
    .end local v15    # "contentId":Ljava/lang/String;
    goto :goto_1

    .line 368
    :cond_3
    new-instance v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v4, v3, v5, v14}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v1, v4

    goto :goto_1

    .line 343
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "contentDisposition":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v14    # "data":[B
    :cond_4
    move-object/from16 v12, p0

    move-object/from16 v13, p4

    .line 372
    :cond_5
    :goto_1
    return-object v1
.end method

.method private setSubjectAndGroup(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "trans"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 673
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 674
    .local v0, "sessionCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 675
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 677
    const-string/jumbo v1, "subject"

    .line 678
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 677
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "subject":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 680
    const-string v2, ""

    move-object v1, v2

    .line 682
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSubject([Ljava/lang/String;)V

    .line 685
    const-string v2, "chat_type"

    .line 686
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 685
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    .line 687
    .local v2, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChatObjectPairFromCursor :: subject : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " chatType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v2, v3, :cond_1

    .line 689
    const-string/jumbo v3, "yes"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOpenGroup([Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_1
    const-string v3, "no"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOpenGroup([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 673
    .end local v1    # "subject":Ljava/lang/String;
    .end local v2    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 695
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 697
    .end local v0    # "sessionCursor":Landroid/database/Cursor;
    :cond_4
    return-void
.end method

.method private setTransToFrom(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "trans"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    .param p4, "remoteURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 957
    .local p3, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "address":Ljava/lang/String;
    const-string v1, "IN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 961
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 964
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsed address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " participants size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 966
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 968
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 971
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 974
    return-void
.end method


# virtual methods
.method protected getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getChatSlmMultibody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "cs"    # Landroid/database/Cursor;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    .param p4, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v2, "form-data;name=\"attachments\";filename=\"sms.txt\""

    const-string/jumbo v3, "text/plain"

    invoke-direct {v1, v2, v3, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .local v1, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_1

    .line 456
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 458
    nop

    .line 459
    const-string v1, "file_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 458
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment;name=file;filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "contentDisposition":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, v4, :cond_1

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment;filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    :cond_1
    nop

    .line 469
    const-string v3, "content_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 468
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "contentType":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, p4, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v4

    .line 471
    .local v4, "data":[B
    if-eqz v4, :cond_3

    array-length v5, v4

    if-eqz v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 474
    :cond_2
    new-instance v5, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v5, v2, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 475
    .local v5, "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 472
    .end local v5    # "part":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :cond_3
    :goto_0
    return-object v0

    .line 456
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "contentDisposition":Ljava/lang/String;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "data":[B
    :cond_4
    :goto_1
    nop

    .line 478
    :goto_2
    return-object v0
.end method

.method protected getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;

    .line 977
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getE164FormatNumber: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 980
    .local v0, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    const-string v1, "US"

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 981
    .local v1, "usNumberProto":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 982
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "e164":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getE164FormatNumber: E164["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    return-object v3

    .line 988
    .end local v1    # "usNumberProto":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "e164":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 986
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberParseException was thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    .end local v1    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :goto_0
    return-object p1
.end method

.method protected getFaxHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "multipart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    move-object v1, p1

    .line 216
    .local v1, "cs":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    const-string v3, "file_path"

    .line 219
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 218
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 221
    .local v4, "data":[B
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 225
    :cond_0
    if-nez v4, :cond_2

    .line 226
    nop

    .line 248
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    return-object v2

    .line 229
    :cond_2
    :try_start_1
    const-string v2, "file_name"

    .line 230
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 229
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment;filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "contentDisposition":Ljava/lang/String;
    const-string v6, "content_type"

    .line 235
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 234
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "contentType":Ljava/lang/String;
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v5, v6, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 238
    .local v7, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    const-string v8, "base64"

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 239
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v8, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v9, "form-data;name=\"attachments\""

    const-string v10, "multipart/mixed"

    invoke-direct {v8, v9, v10, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 244
    .local v8, "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFaxHttpPayloadFromCursor data size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " filename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " HttpPostBody one attachment: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " HttpPostBody: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    nop

    .line 248
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_3
    return-object v8

    .line 215
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "data":[B
    .end local v5    # "contentDisposition":Ljava/lang/String;
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v7    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .end local v8    # "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v2

    .line 248
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v1    # "cs":Landroid/database/Cursor;
    :cond_6
    return-object v2
.end method

.method protected getFaxObjectFromBufferDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 14
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 254
    const-string v0, ";"

    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 257
    .local v1, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryFaxBufferDB(J)Landroid/database/Cursor;

    move-result-object v2

    .line 258
    .local v2, "faxCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 259
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 264
    .local v4, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    const-string v7, "date"

    .line 265
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 264
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "date":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 270
    const-string v7, "fax-message"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 274
    const-string/jumbo v7, "recipients"

    .line 275
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 274
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "to":Ljava/lang/String;
    const-string v9, "OUT"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 281
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    .line 282
    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v10, "multiple recipient for Fax"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "result":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v0

    if-ge v9, v10, :cond_0

    .line 285
    aget-object v10, v0, v9

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 284
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 287
    .end local v9    # "i":I
    :cond_0
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 288
    .end local v0    # "result":[Ljava/lang/String;
    goto :goto_1

    .line 289
    :cond_1
    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 290
    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v8

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 295
    :goto_1
    new-array v0, v6, [Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    aput-object v9, v0, v8

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 298
    const-string v0, "file_name"

    .line 299
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 298
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "filename":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 301
    .local v9, "extOffset":I
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "ext":Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, "contentType":Ljava/lang/String;
    new-array v12, v6, [Ljava/lang/String;

    aput-object v11, v12, v8

    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 308
    const-string v12, "1.0"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMimeVersion([Ljava/lang/String;)V

    .line 312
    const-string/jumbo v12, "transaction_id"

    .line 313
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 312
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 314
    .local v12, "faxId":Ljava/lang/String;
    new-array v13, v6, [Ljava/lang/String;

    aput-object v12, v13, v8

    invoke-virtual {v4, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setClientCorrelator([Ljava/lang/String;)V

    .line 318
    const-string/jumbo v13, "true"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setReportRequested([Ljava/lang/String;)V

    .line 322
    new-array v6, v6, [Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateHash()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v8

    .line 322
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageId([Ljava/lang/String;)V

    .line 326
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v6

    move-object v3, v6

    .line 327
    iput-object v3, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    new-instance v6, Ljava/net/URL;

    const-string v8, "/Media Folder/Fax Media"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolder:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    goto :goto_3

    .line 331
    :catch_0
    move-exception v6

    .line 332
    .local v6, "e":Ljava/net/MalformedURLException;
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolder:Ljava/net/URL;

    .line 333
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 257
    .end local v0    # "filename":Ljava/lang/String;
    .end local v3    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .end local v4    # "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    .end local v5    # "date":Ljava/lang/String;
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v7    # "to":Ljava/lang/String;
    .end local v9    # "extOffset":I
    .end local v10    # "ext":Ljava/lang/String;
    .end local v11    # "contentType":Ljava/lang/String;
    .end local v12    # "faxId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0

    .line 337
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 338
    .end local v2    # "faxCursor":Landroid/database/Cursor;
    :cond_4
    return-object v1
.end method

.method protected getFtObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getMmsObjectFromPduAndAddress(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 17
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 759
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    move-object v3, v0

    .line 762
    .local v3, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v4

    .line 763
    .local v4, "pduCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_a

    .line 764
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 766
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 768
    const-string/jumbo v0, "read"

    .line 769
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 768
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 770
    .local v0, "read":I
    const-string v5, "msg_box"

    .line 771
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 770
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    .local v5, "direction":J
    const-string v7, "\\Flagged"

    const-wide/16 v8, 0x2

    const/4 v10, 0x1

    if-eq v0, v10, :cond_1

    cmp-long v11, v5, v8

    if-nez v11, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    :try_start_1
    iget-object v11, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 774
    :cond_1
    :goto_0
    iget-object v11, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v12, "\\Seen"

    filled-new-array {v7, v12}, [Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 783
    :goto_1
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isMidPrimaryIdForMmsCorrelationId()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "m_id"

    if-eqz v7, :cond_2

    .line 784
    nop

    .line 785
    :try_start_2
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 784
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    goto :goto_2

    .line 788
    :cond_2
    const-string/jumbo v7, "tr_id"

    .line 789
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 788
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, "trid":Ljava/lang/String;
    sget-object v12, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getMmsObjectFromPduAndAddress: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", trid : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_3

    .line 793
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    goto :goto_2

    .line 795
    :cond_3
    nop

    .line 796
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 795
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 799
    .end local v7    # "trid":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    .line 800
    .local v7, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v11, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 802
    .local v11, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    const-string v14, "date"

    .line 803
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 802
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 804
    .local v12, "date":Ljava/lang/String;
    new-array v13, v10, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v11, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 808
    iget-wide v14, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-direct {v1, v14, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    move-result-object v14

    .line 810
    .local v14, "participants":Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    const-wide/16 v15, 0x1

    cmp-long v15, v5, v15

    if-nez v15, :cond_4

    .line 811
    const-string v8, "IN"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 815
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    iget-object v9, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    .line 816
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 815
    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 818
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserCtn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    iget-object v9, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_3

    .line 821
    :cond_4
    cmp-long v8, v5, v8

    if-nez v8, :cond_8

    .line 822
    const-string v8, "OUT"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 826
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_5

    .line 827
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    iget-object v9, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 829
    :cond_5
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_6

    .line 830
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    iget-object v9, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setBCC([Ljava/lang/String;)V

    .line 832
    :cond_6
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_7

    .line 833
    iget-object v8, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    iget-object v9, v14, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCC([Ljava/lang/String;)V

    .line 835
    :cond_7
    new-array v8, v10, [Ljava/lang/String;

    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserCtn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 838
    :cond_8
    :goto_3
    const-string v8, "no"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    .line 842
    const-string v8, "multimedia-message"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 846
    invoke-virtual {v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v8

    move-object v7, v8

    .line 847
    iput-object v7, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 762
    .end local v0    # "read":I
    .end local v5    # "direction":J
    .end local v7    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .end local v11    # "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    .end local v12    # "date":Ljava/lang/String;
    .end local v14    # "participants":Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_9

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v5

    .line 850
    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 852
    .end local v4    # "pduCursor":Landroid/database/Cursor;
    :cond_b
    iget-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 853
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getMmsObjectFromPduAndAddress: correlation id is empty!!!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v0, 0x0

    return-object v0

    .line 857
    :cond_c
    return-object v3
.end method

.method protected getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v0, "multipart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 703
    move-object v2, p1

    .line 704
    .local v2, "cs":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 706
    :cond_0
    const-string v3, "_id"

    .line 707
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 706
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "id":Ljava/lang/String;
    const-string v4, "ct"

    .line 709
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 708
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "contentType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 711
    goto/16 :goto_1

    .line 713
    :cond_1
    const-string v5, "_data"

    .line 714
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 713
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "filePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 716
    .local v6, "data":[B
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 717
    const-string/jumbo v7, "text"

    .line 718
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 717
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, "text":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 720
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    move-object v6, v8

    .line 722
    .end local v7    # "text":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 723
    :cond_3
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getDataFromPartFile(J)[B

    move-result-object v7

    move-object v6, v7

    .line 726
    :goto_0
    if-nez v6, :cond_4

    .line 727
    goto :goto_1

    .line 730
    :cond_4
    const-string v7, "cl"

    .line 731
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 730
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 732
    .local v7, "filename":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachment;filename=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 735
    .local v8, "contentDisposition":Ljava/lang/String;
    new-instance v9, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v9, v8, v4, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 736
    .local v9, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    sget-object v10, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getMmsPartHttpPayloadFromCursor id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", contentType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "data size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " filename: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " HttpPostBody one attachment: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v9}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 736
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "data":[B
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "contentDisposition":Ljava/lang/String;
    .end local v9    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 743
    nop

    .line 752
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 743
    :cond_5
    return-object v1

    .line 746
    :cond_6
    :try_start_1
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v3, "form-data;name=\"attachments\""

    const-string v4, "multipart/mixed"

    invoke-direct {v1, v3, v4, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 749
    .local v1, "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMmsPartHttpPayloadFromCursor HttpPostBody: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    nop

    .line 752
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_7
    return-object v1

    .line 752
    .end local v1    # "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :cond_8
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 703
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_9

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v1

    .line 754
    .end local v2    # "cs":Landroid/database/Cursor;
    :cond_a
    :goto_3
    return-object v1
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "type"    # Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 546
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 547
    return-object v0

    .line 549
    :cond_0
    const/4 v4, 0x0

    .line 550
    .local v4, "chatId":Ljava/lang/String;
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 552
    .local v5, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    const/4 v6, 0x0

    .line 553
    .local v6, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 554
    .local v7, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v8, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    const/4 v9, 0x0

    .line 557
    .local v9, "isGroupChat":Z
    move-object/from16 v10, p1

    .line 558
    .local v10, "cs":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v11, :cond_2

    .line 559
    nop

    .line 631
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_1
    return-object v0

    .line 561
    :cond_2
    :try_start_1
    const-string v11, "chat_id"

    .line 562
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 561
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 563
    const-string v11, "direction"

    .line 564
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 563
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    .line 566
    .local v11, "direction":J
    new-instance v13, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v13}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v13, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 567
    const-string/jumbo v13, "status"

    .line 568
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 567
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 569
    .local v13, "readMessage":I
    const-string v14, "ft_status"

    .line 570
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 569
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 571
    .local v14, "readFt":I
    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const-string v0, "\\Flagged"

    if-eq v13, v15, :cond_5

    :try_start_2
    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 572
    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v15

    if-eq v14, v15, :cond_4

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 573
    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v9    # "isGroupChat":Z
    .local v16, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .local v17, "isGroupChat":Z
    int-to-long v8, v15

    cmp-long v8, v11, v8

    if-nez v8, :cond_3

    goto :goto_0

    .line 578
    :cond_3
    :try_start_3
    iget-object v8, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 557
    .end local v11    # "direction":J
    .end local v13    # "readMessage":I
    .end local v14    # "readFt":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v6

    move-object/from16 v8, v16

    move/from16 v9, v17

    goto/16 :goto_5

    .line 572
    .end local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v17    # "isGroupChat":Z
    .restart local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v9    # "isGroupChat":Z
    .restart local v11    # "direction":J
    .restart local v13    # "readMessage":I
    .restart local v14    # "readFt":I
    :cond_4
    move-object/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v9    # "isGroupChat":Z
    .restart local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v17    # "isGroupChat":Z
    goto :goto_0

    .line 557
    .end local v11    # "direction":J
    .end local v13    # "readMessage":I
    .end local v14    # "readFt":I
    .end local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v17    # "isGroupChat":Z
    .restart local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v9    # "isGroupChat":Z
    :catchall_1
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object v2, v0

    move-object/from16 v20, v6

    .end local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v9    # "isGroupChat":Z
    .restart local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v17    # "isGroupChat":Z
    goto/16 :goto_5

    .line 571
    .end local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v17    # "isGroupChat":Z
    .restart local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v9    # "isGroupChat":Z
    .restart local v11    # "direction":J
    .restart local v13    # "readMessage":I
    .restart local v14    # "readFt":I
    :cond_5
    move-object/from16 v16, v8

    move/from16 v17, v9

    .line 574
    .end local v8    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v9    # "isGroupChat":Z
    .restart local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v17    # "isGroupChat":Z
    :goto_0
    :try_start_4
    iget-object v8, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v9, "\\Seen"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 583
    :goto_1
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    const-string v9, "inserted_timestamp"

    .line 584
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 583
    move v15, v13

    move/from16 v18, v14

    .end local v13    # "readMessage":I
    .end local v14    # "readFt":I
    .local v15, "readMessage":I
    .local v18, "readFt":I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-direct {v8, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "date":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v9, v13

    invoke-virtual {v7, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 588
    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getObjectPairFromCursor :: direction : "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " messagetype : "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " date : "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 591
    .local v9, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1, v7, v9, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 593
    .end local v17    # "isGroupChat":Z
    .local v13, "isGroupChat":Z
    :try_start_5
    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v21, v9

    .end local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v21, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    int-to-long v8, v14

    cmp-long v8, v11, v8

    if-nez v8, :cond_8

    .line 594
    :try_start_6
    const-string/jumbo v8, "remote_uri"

    .line 595
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 594
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, "remoteURI":Ljava/lang/String;
    if-nez v8, :cond_7

    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v3, v9, :cond_7

    .line 597
    nop

    .line 631
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_6
    const/4 v9, 0x0

    return-object v9

    .line 599
    :cond_7
    move-object/from16 v9, v21

    .end local v21    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_7
    invoke-direct {v1, v10, v7, v9, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setTransToFrom(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 600
    .end local v8    # "remoteURI":Ljava/lang/String;
    move/from16 v21, v15

    goto :goto_2

    .line 557
    .end local v0    # "date":Ljava/lang/String;
    .end local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "direction":J
    .end local v15    # "readMessage":I
    .end local v18    # "readFt":I
    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v6

    move v9, v13

    move-object/from16 v8, v16

    goto/16 :goto_5

    .line 600
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v11    # "direction":J
    .restart local v15    # "readMessage":I
    .restart local v18    # "readFt":I
    .restart local v21    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v9, v21

    .end local v21    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_8
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v8

    move/from16 v21, v15

    .end local v15    # "readMessage":I
    .local v21, "readMessage":I
    int-to-long v14, v8

    cmp-long v8, v11, v14

    if-nez v8, :cond_12

    .line 601
    const-string v8, "OUT"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 604
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 605
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v14}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserCtn()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v8, v15

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 610
    :goto_2
    const-string v8, "imdn_message_id"

    .line 611
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 610
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 612
    .local v8, "correlationId":Ljava/lang/String;
    iput-object v8, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 614
    const-string v14, "file_path"

    .line 615
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 614
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 617
    .local v14, "filepath":Ljava/lang/String;
    sget-object v15, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eq v3, v15, :cond_b

    :try_start_9
    sget-object v15, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne v3, v15, :cond_9

    goto :goto_3

    .line 625
    :cond_9
    sget-object v15, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne v3, v15, :cond_a

    .line 626
    invoke-direct {v1, v2, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtMultiBody(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    .end local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .local v15, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    goto :goto_4

    .line 625
    .end local v15    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    :cond_a
    move-object/from16 v19, v0

    move-object/from16 v20, v6

    move-object/from16 v15, v16

    goto :goto_4

    .line 618
    :cond_b
    :goto_3
    :try_start_a
    const-string v15, "body"

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 619
    .local v15, "body":Ljava/lang/String;
    move-object/from16 v19, v0

    .end local v0    # "date":Ljava/lang/String;
    .local v19, "date":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v20, v6

    .end local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .local v20, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_start_b
    const-string v6, "getObjectPairFromCursor :: filepath : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " correlationId : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " body : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v0, :cond_d

    .line 622
    nop

    .line 631
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 624
    :cond_d
    :try_start_c
    invoke-virtual {v1, v10, v15, v3, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatSlmMultibody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 625
    .end local v15    # "body":Ljava/lang/String;
    .end local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .local v0, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    move-object v15, v0

    .line 628
    .end local v0    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .local v15, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    :goto_4
    :try_start_d
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v0, :cond_f

    .line 629
    nop

    .line 631
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 629
    :cond_e
    const/4 v0, 0x0

    return-object v0

    .line 631
    .end local v8    # "correlationId":Ljava/lang/String;
    .end local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "direction":J
    .end local v14    # "filepath":Ljava/lang/String;
    .end local v18    # "readFt":I
    .end local v19    # "date":Ljava/lang/String;
    .end local v21    # "readMessage":I
    :cond_f
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 633
    .end local v10    # "cs":Landroid/database/Cursor;
    :cond_10
    invoke-virtual {v1, v7, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V

    .line 634
    if-eqz v13, :cond_11

    .line 635
    invoke-direct {v1, v4, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setSubjectAndGroup(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V

    .line 638
    :cond_11
    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 639
    .end local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .local v0, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    iput-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 641
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v6, "form-data;name=\"attachments\""

    const-string v8, "multipart/mixed"

    invoke-direct {v2, v6, v8, v15}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 644
    .local v2, "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 557
    .end local v0    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .end local v2    # "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .restart local v10    # "cs":Landroid/database/Cursor;
    .restart local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :catchall_3
    move-exception v0

    move-object v2, v0

    move v9, v13

    move-object v8, v15

    goto :goto_5

    .end local v15    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    :catchall_4
    move-exception v0

    move-object v2, v0

    move v9, v13

    move-object/from16 v8, v16

    goto :goto_5

    .line 607
    .end local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .local v0, "date":Ljava/lang/String;
    .restart local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "direction":J
    .restart local v18    # "readFt":I
    .restart local v21    # "readMessage":I
    :cond_12
    move-object/from16 v19, v0

    move-object/from16 v20, v6

    .line 631
    .end local v0    # "date":Ljava/lang/String;
    .end local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v19    # "date":Ljava/lang/String;
    .restart local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    if-eqz v10, :cond_13

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_13
    const/4 v0, 0x0

    return-object v0

    .line 557
    .end local v9    # "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "direction":J
    .end local v18    # "readFt":I
    .end local v19    # "date":Ljava/lang/String;
    .end local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .end local v21    # "readMessage":I
    .restart local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :catchall_5
    move-exception v0

    move-object/from16 v20, v6

    move-object v2, v0

    move v9, v13

    move-object/from16 v8, v16

    .end local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    goto :goto_5

    .end local v13    # "isGroupChat":Z
    .end local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v17    # "isGroupChat":Z
    :catchall_6
    move-exception v0

    move-object/from16 v20, v6

    move-object v2, v0

    move-object/from16 v8, v16

    move/from16 v9, v17

    .end local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    goto :goto_5

    .end local v16    # "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v17    # "isGroupChat":Z
    .end local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .local v8, "multibody":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .local v9, "isGroupChat":Z
    :catchall_7
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object v2, v0

    .end local v6    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .restart local v20    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :goto_5
    if-eqz v10, :cond_14

    :try_start_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    :goto_6
    throw v2
.end method

.method protected getSlmObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getVvmGreetingBodyFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "multipart":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    .line 162
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_7

    .line 163
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    :cond_0
    const-string v2, "filepath"

    .line 167
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 166
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "filePath":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 169
    goto/16 :goto_0

    .line 172
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v3

    .line 174
    .local v3, "data":[B
    if-nez v3, :cond_2

    .line 175
    goto/16 :goto_0

    .line 178
    :cond_2
    const-string v4, "fileName"

    .line 179
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 178
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "filename":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 181
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 183
    :cond_3
    const-string v5, "mimeType"

    .line 184
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 183
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "contentType":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 186
    goto :goto_0

    .line 188
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "contentDisposition":Ljava/lang/String;
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v6, v5, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 192
    .local v7, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    const-string v8, "base64"

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 194
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVvmGreetingBodyFromDB data size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " contentType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " HttpPostBody one attachment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 194
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "data":[B
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "contentDisposition":Ljava/lang/String;
    .end local v7    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v3, "form-data;name=\"attachments\""

    const-string v4, "multipart/mixed"

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 203
    .local v2, "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVvmGreetingBodyFromDB HttpPostBody: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    nop

    .line 208
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_5
    return-object v2

    .line 161
    .end local v2    # "rel":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v2

    .line 208
    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getVvmObjectFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 87
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 90
    .local v0, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    .line 91
    .local v1, "vvmCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_7

    .line 92
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 96
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v3, "$CNS-Greeting-On"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 103
    .local v3, "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "date":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 108
    new-array v6, v5, [Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateHash()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 108
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageId([Ljava/lang/String;)V

    .line 112
    const-string v6, "1.0"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMimeVersion([Ljava/lang/String;)V

    .line 115
    const-string v6, "greetingtype"

    .line 116
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 115
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 117
    .local v6, "greetingType":I
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVvmObjectFromDB greetingType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result v8

    if-ne v8, v6, :cond_0

    .line 119
    const-string/jumbo v8, "voice-signature"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result v8

    if-ne v8, v6, :cond_1

    .line 123
    const-string v8, "normal-greeting"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 127
    const-string v8, "busy-greeting"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 131
    const-string v8, "extended-absence-greeting"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 135
    const-string v8, "fun-greeting"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 139
    const-string v8, ""

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    .line 144
    :cond_5
    :goto_0
    const-string v8, "duration"

    .line 145
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 144
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 146
    .local v8, "duration":I
    new-array v5, v5, [Ljava/lang/String;

    .line 147
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    .line 146
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentDuration([Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v5

    move-object v2, v5

    .line 150
    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 90
    .end local v2    # "attributes":Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    .end local v3    # "trans":Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    .end local v4    # "date":Ljava/lang/String;
    .end local v6    # "greetingType":I
    .end local v8    # "duration":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v2

    .line 153
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v1    # "vvmCursor":Landroid/database/Cursor;
    :cond_8
    return-object v0
.end method

.method protected setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    .locals 5
    .param p1, "trans"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    .param p2, "chatId"    # Ljava/lang/String;

    .line 515
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 517
    .local v0, "sessionCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 518
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const-string v1, "conversation_id"

    .line 520
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 519
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "conversationId":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getObjectPairFromCursor :: conversationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setConversationId([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 516
    .end local v1    # "conversationId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 528
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 530
    .end local v0    # "sessionCursor":Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method protected setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Z
    .locals 4
    .param p1, "trans"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;
    .param p3, "type"    # Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            ")Z"
        }
    .end annotation

    .line 482
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 483
    .local v0, "isGroupChat":Z
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 484
    const-string/jumbo v1, "yes"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    const-string v1, "no"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    .line 493
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCpmTransMessage  type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, v1, :cond_1

    .line 495
    const-string v1, "chat-message"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, v1, :cond_2

    .line 500
    const-string/jumbo v1, "standalone-message"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, v1, :cond_3

    .line 505
    const-string v1, "file-message"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 511
    :cond_3
    :goto_1
    return v0
.end method
