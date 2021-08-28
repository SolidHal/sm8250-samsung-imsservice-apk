.class public Lcom/sec/internal/helper/translate/MapTranslator;
.super Ljava/lang/Object;
.source "MapTranslator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/sec/internal/helper/translate/MapTranslator;, "Lcom/sec/internal/helper/translate/MapTranslator<TT;TS;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/helper/translate/MapTranslator;->mMap:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TS;"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/sec/internal/helper/translate/MapTranslator;, "Lcom/sec/internal/helper/translate/MapTranslator<TT;TS;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MapTranslator;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
