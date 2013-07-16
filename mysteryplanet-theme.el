;; Modified by Lancelot, depend on Darksair and Soryu's theme

(defconst mp-macp (eq system-type 'darwin) "Are we running in Mac OS?")

(defun color-sRGB (color-tuple)
  (car color-tuple))

(defun color-genRGB (color-tuple)
  (car (cdr color-tuple)))

(defun mp-color (color-tuple)
  (if mp-macp
      (color-genRGB color-tuple)
    (color-sRGB color-tuple)))

(deftheme mysteryplanet "mystery planet")

;; colors in (sRGB GenericRGB) (GenericRGB needs change)
(defvar mp-default-bg '("#111" "#111"))
(defvar mp-default-fg '("#ddd" "#ddd"))
(defvar mp-cursor-bg '("#FFF000" "#FFF000"))
(defvar mp-cursor-fg mp-default-bg)
(defvar mp-region-bg '("#4a410d" "#4a410d"))
(defvar mp-region-fg mp-default-bg)
(defvar mp-modeline-bg mp-default-bg)
(defvar mp-modeline-fg mp-default-fg)
(defvar mp-modeline-inact-bg mp-default-bg)
;;(defvar mp-modeline-inact-fg '("#666e64" "#545b50"))
(defvar mp-modeline-inact-fg mp-default-fg)
(defvar mp-fringe-bg mp-modeline-bg)
(defvar mp-mb-prompt-fg '("#99cf50" "#99cf50"))
(defvar mp-builtin-fg '("#dd7b3b" "#dd7b3b"))
(defvar mp-comment-fg '("#666" "#666"))
(defvar mp-constant-fg  '("#65b042" "#65b042"))
(defvar mp-function-fg '("#99cf50" "#99cf50"))
(defvar mp-keyword-fg '("#cf6a4c" "#cf6a4c"))
(defvar mp-string-fg '("#65b" "#65b"))
(defvar mp-type-fg '("#c5af75" "#c5af75"))
(defvar mp-var-fg'("#56a3d4" "#56a3d4"))
(defvar mp-warn-fg '("#c73a7c" "#b0256c"))
(defvar mp-warn-bg '("#420e09" "#420e09"))
(defvar mp-search-bg '("#FFF000" "#FFF000"))
(defvar mp-search-fg mp-default-bg)
(defvar mp-lazy-hl-bg '("#3387cc" "#3387cc"))
;;(defvar mp-link-fg '("#599bb0" "#4f89a3"))
;;(defvar mp-link-old-fg '("#818780" "#6f746c"))
(defvar mp-button-bg '("#242b2a" "#1c201f"))
(defvar mp-header-bg '("#3e4745" "#303735"))
(defvar mp-header-fg '("#868e84" "#747c70"))
(defvar mp-scroll-bg mp-default-bg)
(defvar mp-scroll-fg mp-default-fg)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (add-to-list 'default-frame-alist '(alpha active inactive))
;;100=opaque/0=transparent
(if (display-graphic-p)
    (add-to-list 'default-frame-alist '(alpha 90 80)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-theme-set-faces
 'mysteryplanet

 `(default ((t (:background ,(mp-color mp-default-bg)
                :foreground ,(mp-color mp-default-fg)))))
 `(cursor ((t (:background ,(mp-color mp-cursor-bg)
               :foreground ,(mp-color mp-cursor-fg)))))
 `(region ((t (:background ,(mp-color mp-region-bg)
               :foreground ,(mp-color mp-region-fg)))))
 `(mode-line ((t (:background ,(mp-color mp-modeline-bg)
                  :foreground ,(mp-color mp-modeline-fg)))))
 `(mode-line-inactive ((t (:background ,(mp-color mp-modeline-inact-bg)
                           :foreground ,(mp-color mp-modeline-inact-fg)))))
 `(fringe ((t (:background ,(mp-color mp-fringe-bg)))))
 `(buffers-tab ((t (:background ,(mp-color mp-default-bg)
                    :foreground ,(mp-color mp-default-fg)))))
 `(minibuffer-prompt ((t (:slant italic :foreground ,(mp-color mp-mb-prompt-fg)))))
 `(font-lock-builtin-face ((t (:foreground ,(mp-color mp-builtin-fg)))))
 `(font-lock-comment-face ((t (:slant italic :foreground ,(mp-color mp-comment-fg)))))
 `(font-lock-constant-face ((t (:slant italic :foreground ,(mp-color mp-constant-fg)))))
 `(font-lock-function-name-face ((t (:foreground ,(mp-color mp-function-fg)))))
 `(font-lock-keyword-face ((t (:bold t :foreground ,(mp-color mp-keyword-fg)))))
 `(font-lock-string-face ((t (:foreground ,(mp-color mp-string-fg)))))
 `(font-lock-type-face ((t (:foreground ,(mp-color mp-type-fg)))))
 `(font-lock-variable-name-face ((t (:foreground ,(mp-color mp-var-fg)))))
 `(font-lock-warning-face ((t (:bold t :foreground ,(mp-color mp-warn-fg)))))
 `(isearch ((t (:background ,(mp-color mp-search-bg)
                :foreground ,(mp-color mp-search-fg)))))
 `(lazy-highlight ((t (:background ,(mp-color mp-lazy-hl-bg)))))
 ;;`(link ((t (:foreground ,(mp-color mp-link-fg) :underline t))))
 ;;`(link-visited ((t (:foreground ,(mp-color mp-link-old-fg) :underline t))))
 `(button ((t (:background ,(mp-color mp-button-bg) :underline t))))
 `(header-line ((t (:background ,(mp-color mp-header-bg)
                    :foreground ,(mp-color mp-header-fg)))))
 `(scroll-bar ((t (:background ,(mp-color mp-scroll-bg)
                   :foreground ,(mp-color mp-scroll-bg))))) 
)

;; Code
;;rainbow-delimiter

;; Rainbow delimiters
(defun mp-rainbow-delim-set-face ()
  (set-face-attribute
   'rainbow-delimiters-depth-1-face nil
   :foreground (mp-color mp-default-fg))
  (set-face-attribute
   'rainbow-delimiters-depth-2-face nil
   :foreground (mp-color mp-type-fg))
  (set-face-attribute
   'rainbow-delimiters-depth-3-face nil
   :foreground (mp-color mp-warn-fg))
  (set-face-attribute
   'rainbow-delimiters-depth-4-face nil
   :foreground (mp-color mp-keyword-fg))
  (set-face-attribute
   'rainbow-delimiters-depth-5-face nil
   :foreground (mp-color mp-region-bg))
  (set-face-attribute
   'rainbow-delimiters-depth-6-face nil
   :foreground (mp-color mp-lazy-hl-bg))
  (set-face-attribute
   'rainbow-delimiters-depth-7-face nil
   :foreground (mp-color mp-comment-fg))
  (set-face-attribute
   'rainbow-delimiters-unmatched-face nil
   :foreground (mp-color mp-warn-bg)))

(eval-after-load "rainbow-delimiters" '(mp-rainbow-delim-set-face))

;; Powerline
(defun mp-powerline-set-face ()
  (set-face-attribute
   'mode-line nil
   :background (mp-color mp-default-bg)
   :box nil)
  (set-face-attribute
   'mode-line-inactive nil
   :foreground (mp-color mp-default-bg)
   :box nil))

(eval-after-load "powerline" '(mp-powerline-set-face))
   
   
; TeX mode
(defun mp-LaTeX-set-face ()
  (set-face-attribute
   'font-latex-italic-face nil
   :foreground (mp-color mp-string-fg)))

(eval-after-load "font-latex" '(mp-LaTeX-set-face))

(provide-theme 'mysteryplanet)
