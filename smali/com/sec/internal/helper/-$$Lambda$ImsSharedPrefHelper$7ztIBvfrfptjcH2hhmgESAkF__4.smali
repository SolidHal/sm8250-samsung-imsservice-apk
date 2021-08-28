.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$7ztIBvfrfptjcH2hhmgESAkF__4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$7ztIBvfrfptjcH2hhmgESAkF__4;->f$0:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$7ztIBvfrfptjcH2hhmgESAkF__4;->f$0:Landroid/content/ContentValues;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$put$13(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V

    return-void
.end method
