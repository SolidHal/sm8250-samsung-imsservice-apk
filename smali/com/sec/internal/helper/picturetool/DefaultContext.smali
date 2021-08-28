.class public Lcom/sec/internal/helper/picturetool/DefaultContext;
.super Lcom/sec/internal/helper/picturetool/JpgContext;
.source "DefaultContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/helper/picturetool/DefaultContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/picturetool/DefaultContext;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V
    .locals 0
    .param p1, "exifProcessor"    # Lcom/sec/internal/helper/picturetool/ExifProcessor;

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/picturetool/JpgContext;-><init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V

    .line 23
    return-void
.end method

.method private changeExtToJpg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 48
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "lastDot":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    return-object v1
.end method


# virtual methods
.method public getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/picturetool/DefaultContext;->changeExtToJpg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/sec/internal/helper/picturetool/JpgContext;->getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "originalFile"    # Ljava/io/File;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/sec/internal/helper/picturetool/DefaultContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processSpecificData: Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/helper/picturetool/DefaultContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
