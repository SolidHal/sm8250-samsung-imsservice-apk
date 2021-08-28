.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 479
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 482
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$302(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 484
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 485
    return-void
.end method
