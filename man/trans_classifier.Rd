% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trans_classifier.R
\name{trans_classifier}
\alias{trans_classifier}
\title{Create trans_classifier object for machine-learning-based model prediction.}
\description{
This class is a wrapper for methods of machine-learning-based classification models.

Author(s): Felipe Mansoldo and Chi Liu
}
\examples{

## ------------------------------------------------
## Method `trans_classifier$new`
## ------------------------------------------------

\donttest{
data(dataset)
t1 <- trans_classifier$new(
		dataset = dataset, 
		x.predictors = "all",
		y.response = "Group")
}

## ------------------------------------------------
## Method `trans_classifier$cal_feature_sel`
## ------------------------------------------------

\donttest{
t1$cal_feature_sel(boruta.maxRuns = 300, boruta.pValue = 0.01)
}

## ------------------------------------------------
## Method `trans_classifier$cal_split`
## ------------------------------------------------

\donttest{
t1$cal_split(prop.train = 3/4)
}

## ------------------------------------------------
## Method `trans_classifier$set_trainControl`
## ------------------------------------------------

\dontrun{
t1$set_trainControl()
}

## ------------------------------------------------
## Method `trans_classifier$cal_train`
## ------------------------------------------------

\dontrun{
t1$cal_train()
}

## ------------------------------------------------
## Method `trans_classifier$cal_feature_imp`
## ------------------------------------------------

\dontrun{
t1$cal_feature_imp()
}

## ------------------------------------------------
## Method `trans_classifier$cal_predict`
## ------------------------------------------------

\dontrun{
t1$cal_predict()
}

## ------------------------------------------------
## Method `trans_classifier$plot_confusionMatrix`
## ------------------------------------------------

\dontrun{
t1$plot_confusionMatrix()
}

## ------------------------------------------------
## Method `trans_classifier$cal_ROC`
## ------------------------------------------------

\dontrun{
t1$cal_ROC()
}

## ------------------------------------------------
## Method `trans_classifier$plot_ROC`
## ------------------------------------------------

\dontrun{
t1$plot_ROC(size = 1, alpha = 0.7)
}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{trans_classifier$new()}}
\item \href{#method-cal_feature_sel}{\code{trans_classifier$cal_feature_sel()}}
\item \href{#method-cal_split}{\code{trans_classifier$cal_split()}}
\item \href{#method-set_trainControl}{\code{trans_classifier$set_trainControl()}}
\item \href{#method-cal_train}{\code{trans_classifier$cal_train()}}
\item \href{#method-cal_feature_imp}{\code{trans_classifier$cal_feature_imp()}}
\item \href{#method-cal_predict}{\code{trans_classifier$cal_predict()}}
\item \href{#method-plot_confusionMatrix}{\code{trans_classifier$plot_confusionMatrix()}}
\item \href{#method-cal_ROC}{\code{trans_classifier$cal_ROC()}}
\item \href{#method-plot_ROC}{\code{trans_classifier$plot_ROC()}}
\item \href{#method-clone}{\code{trans_classifier$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Create the trans_classifier object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$new(
  dataset = NULL,
  x.predictors = "all",
  y.response = NULL,
  n.cores = 1
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataset}}{the object of \code{\link{microtable}} Class.}

\item{\code{x.predictors}}{default "all"; character string or data.frame; a character string represents selecting the corresponding data from microtable$taxa_abund; 
data.frame represents other customized data. See the following available options and description:
\describe{
  \item{\strong{'all'}}{use all the taxa stored in microtable$taxa_abund}
  \item{\strong{'Genus'}}{use Genus level table in microtable$taxa_abund, or other specific taxonomic rank}
  \item{\strong{other input}}{must be a data.frame; It should be have the same format with the data.frame in microtable$taxa_abund, i.e. rows are features; 
    cols are samples with same names in sample_table}
}}

\item{\code{y.response}}{default NULL; the response variable in sample_table.}

\item{\code{n.cores}}{default 1; the CPU thread used.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
data_feature and data_response in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\donttest{
data(dataset)
t1 <- trans_classifier$new(
		dataset = dataset, 
		x.predictors = "all",
		y.response = "Group")
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_feature_sel"></a>}}
\if{latex}{\out{\hypertarget{method-cal_feature_sel}{}}}
\subsection{Method \code{cal_feature_sel()}}{
Perform feature selection.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$cal_feature_sel(
  boruta.maxRuns = 300,
  boruta.pValue = 0.01,
  boruta.repetitions = 4,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{boruta.maxRuns}}{default 300; maximal number of importance source runs; passed to the maxRuns parameter in Boruta function of Boruta package.}

\item{\code{boruta.pValue}}{default 0.01; p value passed to the pValue parameter in Boruta function of Boruta package.}

\item{\code{boruta.repetitions}}{default 4; repetition runs for the feature selection.}

\item{\code{...}}{parameters pass to Boruta function of Boruta package.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
optimized data_feature in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\donttest{
t1$cal_feature_sel(boruta.maxRuns = 300, boruta.pValue = 0.01)
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_split"></a>}}
\if{latex}{\out{\hypertarget{method-cal_split}{}}}
\subsection{Method \code{cal_split()}}{
Split data for training and testing.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$cal_split(prop.train = 3/4)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{prop.train}}{default 3/4; the ratio of the dataset used for the training.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
optimized data_feature in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\donttest{
t1$cal_split(prop.train = 3/4)
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-set_trainControl"></a>}}
\if{latex}{\out{\hypertarget{method-set_trainControl}{}}}
\subsection{Method \code{set_trainControl()}}{
Set trainControl for the following training.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$set_trainControl(method = "repeatedcv", ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{method}}{default 'repeatedcv'; the method used in trainControl function of caret package.}

\item{\code{...}}{parameters pass to trainControl function of caret package.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
trainControl in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$set_trainControl()
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_train"></a>}}
\if{latex}{\out{\hypertarget{method-cal_train}{}}}
\subsection{Method \code{cal_train()}}{
Run the training.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$cal_train(
  method = "rf",
  metric = "Accuracy",
  max.mtry = 2,
  max.ntree = 200,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{method}}{default "rf"; representing the random forest method; see method in train function of caret package.}

\item{\code{metric}}{default "Accuracy"; see metric in train function of caret package.}

\item{\code{max.mtry}}{default 2; maximum mtry.}

\item{\code{max.ntree}}{default 200; Number of trees to grow; pass to the ntree parameter of randomForest function in randomForest package.}

\item{\code{...}}{parameters pass to train function of caret package.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
res_train in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$cal_train()
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_feature_imp"></a>}}
\if{latex}{\out{\hypertarget{method-cal_feature_imp}{}}}
\subsection{Method \code{cal_feature_imp()}}{
Get feature importance from the training model.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$cal_feature_imp(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{parameters pass to the evaluating function; If "rf" used, pass to randomForest::importance.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
res_feature_imp in the object. One row for each predictor variable. The column(s) are different importance measures.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$cal_feature_imp()
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_predict"></a>}}
\if{latex}{\out{\hypertarget{method-cal_predict}{}}}
\subsection{Method \code{cal_predict()}}{
Run the prediction.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$cal_predict(positive_class = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{positive_class}}{default NULL; see positive parameter in confusionMatrix function of caret package.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
res_predict, res_confusion_fit and res_confusion_stats stored in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$cal_predict()
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-plot_confusionMatrix"></a>}}
\if{latex}{\out{\hypertarget{method-plot_confusionMatrix}{}}}
\subsection{Method \code{plot_confusionMatrix()}}{
Plot the cross-tabulation of observed and predicted classes with associated statistics.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$plot_confusionMatrix(
  plot_confusion = TRUE,
  plot_statistics = TRUE
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{plot_confusion}}{default TRUE; whether plot the confusion matrix.}

\item{\code{plot_statistics}}{default TRUE; whether plot the statistics.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
ggplot object in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$plot_confusionMatrix()
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_ROC"></a>}}
\if{latex}{\out{\hypertarget{method-cal_ROC}{}}}
\subsection{Method \code{cal_ROC()}}{
Get ROC curve data and the performance data.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$cal_ROC(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{parameters pass to plot.performance function of ROCR package.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
a list including res_perf, all_auc_perf and all_perf_table stored in the object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$cal_ROC()
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-plot_ROC"></a>}}
\if{latex}{\out{\hypertarget{method-plot_ROC}{}}}
\subsection{Method \code{plot_ROC()}}{
Plot ROC curve.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$plot_ROC(
  color_values = RColorBrewer::brewer.pal(8, "Dark2"),
  abline_color = "grey50",
  abline_type = 1,
  abline_size = 0.7,
  ...
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{color_values}}{default RColorBrewer::brewer.pal(8, "Dark2"); colors used in the plot.}

\item{\code{abline_color}}{default "grey50"; the color for the diagonal line.}

\item{\code{abline_type}}{default 1; the diagonal line type.}

\item{\code{abline_size}}{default 0.7; the diagonal line size.}

\item{\code{...}}{parameters pass to geom_line function of ggplot2 package.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
ggplot2 object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
t1$plot_ROC(size = 1, alpha = 0.7)
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{trans_classifier$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
