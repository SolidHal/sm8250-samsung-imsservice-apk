.class public Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;
.super Ljava/lang/Object;
.source "ComplexImageExtractor.java"


# static fields
.field private static final CONTENT_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "FT_thumb"


# instance fields
.field private mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    return-void
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "thumbnailFile"    # Ljava/lang/String;

    .line 24
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 26
    .local v0, "extOffset":I
    if-gez v0, :cond_0

    .line 27
    const/4 v1, 0x0

    return-object v1

    .line 30
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public extractFrom(Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p1, "imageFile"    # Ljava/io/File;

    .line 35
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 36
    sget-object v1, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "imageFile == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 41
    sget-object v2, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "fileName == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0

    .line 44
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "ext":Ljava/lang/String;
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gid decoder: extractFrom, file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "ComplexImageExtractor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v2, Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-direct {v2}, Lcom/sec/internal/helper/picturetool/GifDecoder;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read(Ljava/lang/String;)I

    move-result v2

    .line 52
    .local v2, "errorCode":I
    if-nez v2, :cond_a

    .line 58
    iget-object v3, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-virtual {v3}, Lcom/sec/internal/helper/picturetool/GifDecoder;->getFrames()Ljava/util/Vector;

    move-result-object v3

    .line 59
    .local v3, "temp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_9

    .line 65
    const/4 v4, 0x0

    .line 67
    .local v4, "tempStream":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v6, "FT_thumb"

    const-string v7, ".jpg"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 68
    .local v6, "tempFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v7

    .line 70
    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object v5, v5, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_2

    .line 72
    nop

    .line 80
    nop

    .line 81
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    nop

    .line 88
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v5

    .line 91
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 83
    :catch_1
    move-exception v5

    .line 84
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 88
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 72
    :goto_1
    return-object p1

    .line 87
    :goto_2
    nop

    .line 88
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 92
    goto :goto_3

    .line 90
    :catch_2
    move-exception v7

    .line 91
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    throw v5

    .line 75
    :cond_2
    nop

    .line 80
    nop

    .line 81
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 87
    nop

    .line 88
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 92
    :goto_4
    goto :goto_5

    .line 90
    :catch_3
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 86
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 83
    :catch_4
    move-exception v5

    .line 84
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 87
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 88
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 75
    :goto_5
    return-object v6

    .line 87
    :goto_6
    nop

    .line 88
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 92
    goto :goto_7

    .line 90
    :catch_5
    move-exception v7

    .line 91
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v7    # "e":Ljava/io/IOException;
    :goto_7
    throw v5

    .line 79
    .end local v6    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v5

    goto :goto_e

    .line 76
    :catch_6
    move-exception v5

    .line 77
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 80
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 81
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_b

    .line 86
    :catchall_3
    move-exception v5

    goto :goto_8

    .line 83
    :catch_7
    move-exception v5

    .line 84
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 87
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_5

    .line 88
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_c

    .line 87
    :goto_8
    if-eqz v4, :cond_3

    .line 88
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_9

    .line 90
    :catch_8
    move-exception v6

    .line 91
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 92
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_9
    nop

    .line 93
    :goto_a
    throw v5

    .line 87
    :cond_4
    :goto_b
    if-eqz v4, :cond_5

    .line 88
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_c

    .line 90
    :catch_9
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 92
    :cond_5
    :goto_c
    nop

    .line 94
    :goto_d
    goto :goto_15

    .line 80
    :goto_e
    if-eqz v4, :cond_7

    .line 81
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_12

    .line 86
    :catchall_4
    move-exception v5

    goto :goto_f

    .line 83
    :catch_a
    move-exception v6

    .line 84
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 87
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_8

    .line 88
    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_13

    .line 87
    :goto_f
    if-eqz v4, :cond_6

    .line 88
    :try_start_14
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_10

    .line 90
    :catch_b
    move-exception v6

    .line 91
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 92
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :goto_10
    nop

    .line 93
    :goto_11
    throw v5

    .line 87
    :cond_7
    :goto_12
    if-eqz v4, :cond_8

    .line 88
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_13

    .line 90
    :catch_c
    move-exception v6

    .line 91
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_14

    .line 92
    :cond_8
    :goto_13
    nop

    .line 94
    :goto_14
    throw v5

    .line 60
    .end local v4    # "tempStream":Ljava/io/FileOutputStream;
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 60
    const-string v5, "Requested frame was: 0 but %d only available."

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    .end local v3    # "temp":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;>;"
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GifDecoder read routine has ended with an error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    .end local v2    # "errorCode":I
    :cond_b
    :goto_15
    return-object p1
.end method

.method public release()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->clean()V

    .line 104
    :cond_0
    return-void
.end method
