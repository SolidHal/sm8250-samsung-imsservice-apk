.class public interface abstract Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;
.super Ljava/lang/Object;
.source "IVideoPreviewExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVideoPreview"
.end annotation


# virtual methods
.method public abstract getDimensions()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getSize()J
.end method
