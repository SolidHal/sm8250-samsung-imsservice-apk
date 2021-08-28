.class public Lcom/sec/internal/helper/picturetool/JpgContext;
.super Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;
.source "JpgContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/helper/picturetool/JpgContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V
    .locals 0
    .param p1, "exifProcessor"    # Lcom/sec/internal/helper/picturetool/ExifProcessor;

    .line 23
    invoke-direct {p0}, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/JpgContext;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    .line 26
    return-void
.end method


# virtual methods
.method public getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processSpecificData: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/JpgContext;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/picturetool/ExifProcessor;->process(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IOException from ExifProcessor but use destinationFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processSpecificData: Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    const-class v0, Lcom/sec/internal/helper/picturetool/JpgContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
