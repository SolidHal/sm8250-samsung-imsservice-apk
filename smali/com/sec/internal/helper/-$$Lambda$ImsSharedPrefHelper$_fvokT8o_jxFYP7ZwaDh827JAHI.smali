.class public final synthetic Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$_fvokT8o_jxFYP7ZwaDh827JAHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$_fvokT8o_jxFYP7ZwaDh827JAHI;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/helper/-$$Lambda$ImsSharedPrefHelper$_fvokT8o_jxFYP7ZwaDh827JAHI;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$remove$10(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method
