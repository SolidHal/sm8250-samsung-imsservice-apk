.class public interface abstract Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor;
.super Ljava/lang/Object;
.source "IVideoPreviewExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;
    }
.end annotation


# virtual methods
.method public abstract extract(Ljava/io/File;Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
