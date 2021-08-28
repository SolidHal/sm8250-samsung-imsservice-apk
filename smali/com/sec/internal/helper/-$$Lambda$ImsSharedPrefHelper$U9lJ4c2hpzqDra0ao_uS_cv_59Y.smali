.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$U9lJ4c2hpzqDra0ao_uS_cv_59Y;->f$1:Z

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getBoolean$7(Ljava/lang/String;ZLandroid/content/SharedPreferences;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
